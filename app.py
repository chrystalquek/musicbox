from flask import Flask, request, render_template, send_file
from constants import NUM_TONES, NUM_BEATS, NOTES
import musicBoxMaker
import numpy as np
from pydub import AudioSegment
from pydub.playback import play
from pydub.generators import Sine

app = Flask(__name__)

app.jinja_env.globals['len'] = len


GCODE_FILE_NAME = "result_cylinder2.gcode"
NOTES_AUDIO_FILE_NAME = "recording_notes.mp3"
AUDIO_FILE_NAME = "result_song.wav"

@app.route('/')
def index():
    return render_template('index.html',
                           num_tones=NUM_TONES,
                           num_beats=NUM_BEATS,
                           notes = NOTES)

@app.route('/gcode', methods=['POST'])
def gcode():    
    partition = np.full((NUM_BEATS, NUM_TONES), False) # 

    for i in range(NUM_TONES):
        for j in range(NUM_BEATS):
            checkbox_name = f'checkbox_{i}_{j}'
            partition[j, i] = bool(request.form.get(checkbox_name)) # flip!
            
    partition = partition.transpose() # i think the original code is buggy so i had to add this in
            
    
    with open ("example_prefix.gcode", "r") as myfile:
        prefix=str(myfile.read())
    with open ("example_suffix.gcode", "r") as myfile:
        suffix=str(myfile.read())

    #adjust the parameters to adjust to your music box
    gcode_file = musicBoxMaker.generateGCODE(center=[110.0,110.0], height=20, radius=6.5, layerHeight=0.2, startZ = 1.35, endZ = 17.55, sheet=partition, start_extrusion_val=10.71106, prefix=prefix, suffix=suffix)
    #save the gcode
    with open(GCODE_FILE_NAME, "w") as myfile:
        print("saving...")
        myfile.write(gcode_file)
        print("Done!!!")
        
        
    # audio
    startTimes = [4984, 5538, 6071, 6647, 7249, 7736, 8288, 8910, 9485, 9984, 10705, 11322, 11953, 12615, 13210, 13825, 14553, 15237]
    noteLength = 200 #length of each note (in ms)
    song = AudioSegment.empty()
    nbNotes = partition.shape[0]
    for i in range(partition.shape[1]):#loop over the partition
        note = AudioSegment.silent(duration=noteLength)
        for j in range(nbNotes):#loop over the notes
            if partition[nbNotes-j-1,i]:
                freq_of_note = FREQUENCIES[j]
                note = note.overlay(Sine(freq_of_note).to_audio_segment(duration=300))
        song += note
        
    song.export(AUDIO_FILE_NAME, format='wav')

    return '', 200
    
    # return send_file(gcode_file, as_attachment=True)
    
@app.route('/download_file')
def download_file():
    # Return the generated file for download
    return send_file(GCODE_FILE_NAME, as_attachment=True)


@app.route('/play_song')
def play_song():

    song = AudioSegment.from_wav(AUDIO_FILE_NAME)
    play(song)
    
    return '', 200

