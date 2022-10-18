import random

print("[1] Gana el primero que llega a X victorias\n[2] Gana el primero que llega a 3 victorias\n[3] Gana el primero que llega a 5 victorias\n[4] Mostar resultados\n[0] Salir")
usuario = input("Indicar 1) piedra 2) papel 3) tijeras")
computadora = random(1,3)

if usuario == computadora:
    print("Empate")
    if usuario == 1: # piedra
        if computadora == 2: # papel
            print("gana computadora, piedra mata a papel")
        else:
            print("gana usuario, piedra mata tijeras")
    if usuario == 2: # papel
        if computadora == 1: # piedra
            print("gana usuario, papel envuelve a piedra")
        else:
            print("perdiste tijera corta a papel")
    if usuario == 3: # tijeras
        if computadora == 1: # piedra
            print("perdiste, piedra rompe tijeras")
        else:
            print("ganaste, tijeras corta papel")
    

