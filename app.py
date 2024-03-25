from flask import Flask, request, render_template, send_file, redirect, url_for
from constants import MIDI_NOTES, NOTE_DURATION, NUM_COMBS, NUM_BEATS, FREQUENCIES, MIDI_NOTES_TO_FREQUENCIES
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

import random

def create_array():
    # Initialize an empty array
    arr = []

    # Determine the number of 2s in the array
    num_twos = random.randint(3, 9)

    # Add the required number of 2s to the array
    arr.extend([2] * num_twos)

    # Calculate the remaining sum needed to reach 18
    remaining_sum = NUM_COMBS - (num_twos * 2)

    # Randomly distribute 0s and 1s to make up the remaining sum
    while remaining_sum > 0:
        if remaining_sum >= 1:
            arr.append(1)
            remaining_sum -= 1
        else:
            arr.append(0)
            remaining_sum = 0

    # Randomly add 0s to make the array length 20
    while len(arr) < len(MIDI_NOTES_TO_FREQUENCIES):
        arr.append(0)

    # Shuffle the array to randomize the order
    random.shuffle(arr)

    return arr

# Example usage
array = create_array()
print(array)
print("Length of the array:", len(array))
print("Sum of the array:", sum(array))



@app.route('/')
def index():
    return render_template('notes.html', num_combs=NUM_COMBS) # reach first page

@app.route('/drum', methods=['GET', 'POST'])
def drum():
    # Get the form data from the URL parameters
    checkbox_display = [int(x) for x in request.args.getlist('checkbox_display')]
    print("drum_page checkbox_display", checkbox_display)
    return render_template('drum.html', 
                           checkbox_display=checkbox_display,
                           midi_notes=list(MIDI_NOTES_TO_FREQUENCIES.keys()),
                           num_beats=NUM_BEATS)

@app.route('/gcode', methods=['POST'])
def gcode():    
    partition = np.full((NUM_BEATS, NUM_COMBS), False) # 

    for i in range(NUM_COMBS):
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

@app.route('/notes', methods=['GET', 'POST'])
def notes():
    if request.method == 'GET':
        return render_template('notes.html', num_combs=NUM_COMBS)
    
    
    # checkbox_display = create_array()
    checkbox_display = [1 for _ in range(NUM_COMBS)]
    checkbox_display.extend([0 for _ in range(len(MIDI_NOTES_TO_FREQUENCIES) - NUM_COMBS)])
    assert(sum(checkbox_display) == NUM_COMBS)

    print("checkbox_display", checkbox_display)
    
    return redirect(url_for('drum', checkbox_display=checkbox_display))

    
    text_fields = [request.form[f'field_{i}'] for i in range(NUM_COMBS)]
    
    # Do something with the collected values (e.g., store them in a database)
    print("Collected text field values:", text_fields)
    
    checkbox_display = [0 for _ in range(len(MIDI_NOTES_TO_FREQUENCIES))] # 0 | 1 | 2

    prev_idx_in_notes_to_freq = 0
    for note in text_fields:
        if note not in MIDI_NOTES_TO_FREQUENCIES:
            print("note:", note, "is not recognised")
        idx_in_notes_to_freq = list(MIDI_NOTES_TO_FREQUENCIES.keys()).index(note)
        if idx_in_notes_to_freq < prev_idx_in_notes_to_freq:
            print("why got later note come earlier?? represenation of piano is wrong")
        checkbox_display[idx_in_notes_to_freq] += 1
        
    checkbox_display = [1 for _ in range(NUM_COMBS)] # 0 | 1 | 2 # REMOVE
    checkbox_display.extend([0 for _ in range(len(MIDI_NOTES_TO_FREQUENCIES) - NUM_COMBS)])
    assert(sum(checkbox_display) == NUM_COMBS)

    print("checkbox_display", checkbox_display)
    
    return redirect(url_for('drum', checkbox_display=checkbox_display))
