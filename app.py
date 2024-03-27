from flask import Flask, request, render_template, send_file
from constants import NUM_TONES, NUM_BEATS, NOTES, NOTE_TO_FREQUENCY, SONGS
import musicBoxMaker
import numpy as np
from pydub import AudioSegment
from pydub.playback import play
from pydub.generators import Sine
import io

app = Flask(__name__)

app.jinja_env.globals['len'] = len

@app.route('/')
def index():
    return render_template('index.html',
                           num_tones=NUM_TONES,
                           num_beats=NUM_BEATS,
                           notes = NOTES,
                           sample_songs = SONGS)
    

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
    partition = np.flip(partition)
    
    listTri = musicBoxMaker.generateTriangleList(center=[110.0,110.0], height=30, radius=19.5, layerHeight=0.2, mainLayerWidth=2, bump_delta = 1.5, startZ = 0, endZ = 30, sheet=partition)
    stl_buffer = musicBoxMaker.saveToSTLBuffer(listTri)

    return send_file(stl_buffer, mimetype='application/octet-stream', as_attachment=False)

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
        
    file_obj = io.BytesIO()
    song.export(file_obj, format="wav")
    file_obj.seek(0)
    
    return send_file(file_obj, mimetype='audio/wav', as_attachment=False)

