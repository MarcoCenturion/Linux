"""
Piedra papel o tijeras
Realizar un menu con las siguientes opciones

[1] Gana el primero que llega a "X" victorias
[2] Gana el primero que llega a 3 victorias
[3] Gana el primero que llega a 5 victorias
[4] Mostar resultados
[0] Salir

La opcion 4 debera mostrar:
Total de series ganadas por cada uno
Total de partidas jugadas con detalle de empates y victorias por lado.
"""
from random import randint

while True:
    print('''\t::: Menu :::

        [1] Indicar la cantidad de partidas
        [2] Gana el que llega primero a tres victorias
        [3] Gana el que llega primero a cinco victorias
        [4] Mostrar resultados
        [0] Salir
        ''')
    partidas = int(input("Indicar opción: "))
    if partidas == 1:
        mejor = int(input("Indicar la cantidad de partidas"))
    elif partidas == 2:
        mejor = 3
    elif partidas == 3:
        mejor = 5
    elif partidas == 4:
        print(f"Puntos computadora {PuntosPc} y Puntos Humano {PuntosHumano}")
        continue
    elif partidas == 0:
        break
    else:
        print("Indicar una opción válida")
        continue

PuntosHumano = 0
PuntosPc = 0



