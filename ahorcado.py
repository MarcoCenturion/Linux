#!/bin/env python

# Definiremos el juego del ahorcado
# Dividiendo los diferentes problemas del juego en funciones

def Sprite1():
    print(
     '''
        |--------|
        | 
        |
        |
        |
       |-|
    |--   --|
    |-------|
    ''')

def Incognita():
    largo=len(palabra)
    print(palabra[0], (largo-2)*'_ ',palabra[-1])

def avance():
    global intentos
    intentos = int(len(palabra)) - 2 
    global letrausuario 
    deletrea = []
    deletrea = palabra.upper().split() # Convertimos el str en una lista
    print(deletrea)
    # if tiros > 0:



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
        palabra = palabra.upper()
        Sprite1()
        continue
    elif opcion == 2:
        Sprite1()
        Incognita()
        letra = input("Que letra crees que falta :? ")
        avance()
        continue
    elif opcion == 3:
        print(
        '''
        -------------------------------
        :::     Vediamo dopo        :::
        -------------------------------
        ''')
        break
    else:
        print(
        '''
        --------------------------------
        ::: Indicar una oción válida :::
        --------------------------------
        ''')
        continue
