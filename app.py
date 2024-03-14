from flask import Flask, request, render_template
from constants import MIDI_NOTES, NOTE_DURATION
import musicBoxMaker

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html',
                           notes=MIDI_NOTES,
                           durations=NOTE_DURATION)

@app.route('/gcode', methods=['POST'])
def gcode():
    data = request.form
    
    data = [(data.get("notes_select", type=int), data.get("duration_select", type=int))]
    data.append((5, 2))
    data.append((13, 1))
    
    with open ("example_prefix.gcode", "r") as myfile:
        prefix=str(myfile.read())
    with open ("example_suffix.gcode", "r") as myfile:
        suffix=str(myfile.read())
    
    partition = musicBoxMaker.parsePieceToPartition(data)
    
    print(partition)
    
    #adjust the parameters to adjust to your music box
    gcode_file = musicBoxMaker.generateGCODE(center=[110.0,110.0], height=20, radius=6.5, layerHeight=0.2, startZ = 1.35, endZ = 17.55, sheet=partition, start_extrusion_val=10.71106, prefix=prefix, suffix=suffix)
    #save the gcode
    with open("result_cylinder2.gcode", "w") as myfile:
        print("saving...")
        myfile.write(gcode_file)
        print("Done!!!")
    
    
    return gcode_file
