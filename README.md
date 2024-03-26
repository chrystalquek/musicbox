# MusicBoxMaker

This project builds on https://github.com/RandomPrototypes/MusicBoxMaker.

We provide a UI running on Flask to allow users to design their own music drums.

Features
- Drum/Music Score Design, Time Signature Selection
- Preview/play song
- Generate STL file
- Sample songs, currently

# Installation

Create a conda/python environment and run
`pip install -r requirements.txt`

On windows, you may need to install visualc++ build tools to solve some errors.

# Running the Flask App

`export FLASK_APP=app`

`flask run`

Go to http://127.0.0.1:5000

# Notes
- It is difficult for a music box to play the same note consecutively.
- As we found that the combs of most music boxes are designed specifically to the song (e.g. having repeated notes), we decided to design features for a C-major white key scale.
- This application can be hosted easily since it is a frontend only application.
- This application is designed for a Macbook 13 inch display.

# Appendix: Running other scripts (non-GUI)

There are 3 scripts that you can modify and use : 
* play_partition.py, to play a partition/music score file using your recorded notes
* cylinderGeneratorSTL.py, to generate a STL file corresponding to the cylinder of your partition/music score
* cylinderGeneratorGCODE.py, to generate a GCODE file corresponding to the cylinder of your partition/music score

## Parameter list

Both the STL and GCODE generating scripts have a list of parameters to tune for your music box.
The default parameters should be close, but you may have to adjust slightly.

Parameter | Description
----------|------------
center | center coordinate of your 3D model (use the center coordinate of your 3D printer if you generate GCODE)
sheet  | the partition/music score
height | height of the cylinder
radius | outer radius of the cylinder (not including the pins)
startZ | start position (in Z) of your partition/music score on the cylinder. Adjust this parameter to align the pins to the comb.
endZ   | end position (in Z) of your partition/music score on the cylinder. Adjust this parameter to align the pins to the comb.
bump_delta | Increase or decrease it to adjust the size of the pins
layerHeight | layer height/thickness
filament_diameter | Diameter of your filament (GCODE only)
start_extrusion_val | starting value for extruding the plastic in the GCODE. Should be adapted based on the prefix GCODE you use. (GCODE only)
prefix | GCODE that will be executed before the printing of the cylinder. You must adapt it based on your printer. (GCODE only)
suffix | GCODE that will be executed after the printing of the cylinder. You must adapt it based on your printer. (GCODE only)
mainLayerWidth | layer width for the main part of your cylinder
bottomLayerWidth | layer width for the bottom of your cylinder (gradient until 0 to startZ). Adjust it to fit the plastic bottom plastic cap.
topLayerWidth | layer width for the top of your cylinder (gradient from endZ to height). Adjust it to fit the plastic top plastic cap.

## Partition/music score file

a partition/music score file is a txt file with 18 lines (for 18 tones).
Each line is composed of multiple segments of 8 notes separated by a vertical bar |--------|--------|--------|  
A hyphen - is used when the note is not played, and a X is used when the note is played.  
Before the first vertical bar |, you can add text such as the name of the corresponding tone (ex: B5#|----X---|).  
 
## STL generation script
In cylinderGeneratorSTL.py, you can generate a STL file for your partition/music score :
First, you need to load your partition/music score file :
``` python
partition = musicBoxMaker.parsePartitionFile("yourPartition.txt")
``` 
Then, you generate the list of triangles using the function musicBoxMaker.generateTriangleList. See the parameters description in the section "Parameter list".  
Finally, you can generate the STL file using :  
``` python
musicBoxMaker.saveToSTL("yourFile.stl", listTri)
``` 

For better control of the print, it is recommended to generate the GCODE instead.

