from flask import Flask, request, render_template, send_file
from constants import NUM_TONES, NUM_BEATS, NOTES, NOTE_TO_FREQUENCY
import musicBoxMaker
import numpy as np
from pydub import AudioSegment
from pydub.playback import play
from pydub.generators import Sine

app = Flask(__name__)

app.jinja_env.globals['len'] = len


STL_FILE_NAME = "result_cylinder3.stl"
NOTES_AUDIO_FILE_NAME = "recording_notes.mp3"
AUDIO_FILE_NAME = "result_song.wav"

@app.route('/')
def index():
    return render_template('index.html',
                           num_tones=NUM_TONES,
                           num_beats=NUM_BEATS,
                           notes = NOTES)
    

def parse_partition(req):
    partition = np.full((NUM_BEATS, NUM_TONES), False) # 

    for i in range(NUM_TONES):
        for j in range(NUM_BEATS):
            checkbox_name = f'checkbox_{i}_{j}'
            partition[j, i] = bool(req.form.get(checkbox_name)) # flip!
            
    partition = partition.transpose() # i think the original code is buggy so i had to add this in
    
    return partition
    

@app.route('/stl', methods=['POST'])
def stl():    
            
    partition = parse_partition(request)
    
    listTri = musicBoxMaker.generateTriangleList(center=[110.0,110.0], height=30, radius=19.5, layerHeight=0.2, mainLayerWidth=2, bump_delta = 1, startZ = 0, endZ = 30, sheet=partition)
    musicBoxMaker.saveToSTL(STL_FILE_NAME, listTri)

    return send_file(STL_FILE_NAME, as_attachment=True)


@app.route('/song', methods=['POST'])
def song():
    
    partition = parse_partition(request)

    noteLength = 200 #length of each note (in ms)
    song = AudioSegment.empty()
    nbNotes = partition.shape[0]
    for i in range(partition.shape[1]):#loop over the partition
        note = AudioSegment.silent(duration=noteLength)
        for j in range(nbNotes):#loop over the notes
            if partition[nbNotes-j-1,i]:
                freq_of_note = list(NOTE_TO_FREQUENCY.values())[j]
                note = note.overlay(Sine(freq_of_note).to_audio_segment(duration=300))
        song += note
        
    song.export(AUDIO_FILE_NAME, format='wav')

    song = AudioSegment.from_wav(AUDIO_FILE_NAME)
    play(song)
    
    return '', 200

