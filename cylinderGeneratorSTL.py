import musicBoxMaker
import numpy as np

partition = np.fliplr(np.diag(np.full(64,True)))[-15:, :]

#adjust the parameters to adjust to your music box
listTri = musicBoxMaker.generateTriangleList(center=[110.0,110.0], height=30, radius=19.5, layerHeight=0.2, mainLayerWidth=2, bump_delta = 1.5, startZ = 0, endZ = 30, sheet=partition)
musicBoxMaker.saveToSTL("result_cylinder.stl", listTri)#save to STL
