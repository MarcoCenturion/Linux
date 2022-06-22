import pygame as pg
import numpy as np

pg.init()
width, height = 700, 700
screen = pg.display.set_mode((height, width))

bg = (25,25,25)
screen.fill(bg)

nxC, nyC = 25, 25
dimCW = width / nxC
dimCH = height / nyC

gameState = np.zeros((nxC, nyC))

while True:
    for y in range(0, nxC):
        for x in range(0, nyC):

            poly = [((x)    * dimCW, y * dimCH),
                    ((x+1)  * dimCW, y * dimCH),
                    ((x+1)  * dimCW, (y+1) * dimCH),
                    ((x) * dimCW, (y+1) * dimCH)]

            pg.draw.polygon(screen, (128, 128, 128), poly, 1)
    pg.display.flip()
            
    pass
