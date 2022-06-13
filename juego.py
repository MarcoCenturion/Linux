import pygame, sys
pygame.init()

''' Definir colores
ROJO / VERDE / AZUL (RGB)'''

BLACK = (0, 0, 0)
WHITE = (255, 255, 255)
GREEN = (0, 255, 0)
RED   = (255, 0, 0)
BLUE  = (0, 0, 255)

size = (899, 600)

screen = pygame.display.set_mode(size)

while True:
    for event in pygame.event.get():
        print(event)
        if event.type == pygame.QUIT:
            sys.exit()

    screen.fill(WHITE)
    
    # Dibujo
    pygame.draw.line(screen, RED,[0,100],[100,100],5)

    #actualiza pantalla
    pygame.display.flip()
