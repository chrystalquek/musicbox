from flask import Flask, request, render_template, send_file
from constants import MIDI_NOTES, NOTE_DURATION, NUM_TONES, NUM_BEATS
import musicBoxMaker
import numpy as np

app = Flask(__name__)


GCODE_FILE_NAME = "result_cylinder2.gcode"

@app.route('/')
def index():
    return render_template('index.html',
                           num_tones=NUM_TONES,
                           num_beats=NUM_BEATS)

@app.route('/gcode', methods=['POST'])
def gcode():    
    partition = np.full((NUM_BEATS, NUM_TONES), False) # 

    for i in range(NUM_TONES):
        for j in range(NUM_BEATS):
            print(i,j)
            checkbox_name = f'checkbox_{i}_{j}'
            partition[j, i] = bool(request.form.get(checkbox_name)) # flip!
            
    partition = partition.transpose() # i think the original code is buggy
            
    
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
        
    return '', 200
    
    # return send_file(gcode_file, as_attachment=True)
    
@app.route('/download_file')
def download_file():
    # Return the generated file for download
    return send_file(GCODE_FILE_NAME, as_attachment=True)

