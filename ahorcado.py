#!/bin/env python

# Definiremos el juego del ahorcado
# Dividiendo los diferentes problemas del juego en funciones

def Sprite1():
    print(
     '''
        |----------|
        | 
        |
        |
        |
       |-|
    |--   --|
    |-------|
    ''')

def Incognita():
    for i in palabra:
        largo=len(palabra)
        print(palabra[0], largo*'_ ',palabra[-1])

while True:
    print(
    '''
    -------------------------------
    :::  EL JUEGO DEL AHORCADO  :::
    -------------------------------
    (1) Ingresar palabra a adivinar
        (máximo 7 letras)
    (2) A Jugar
    (3) Salir del JUEGO
    -------------------------------
    ''')
    opcion = int(input("Ingresar 1, 2 o 3 ? :"))
    if opcion == 1:
        palabra = input("Indicar la palabra a adivinar: ")
        Sprite1()
        continue
    elif opcion == 2:
        Sprite1()
        Incognita()
        continue
    else:
        print(
        '''
        -------------------------------
        :::     Vediamo dopo        :::
        -------------------------------
        ''')
        break

