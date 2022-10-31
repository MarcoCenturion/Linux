archivo = open(r'/home/marco/Linux/cias_areas.txt')

def abrir(variable):
    for cia in variable:
        print(cia)

abrir(archivo)

archivo.close()

