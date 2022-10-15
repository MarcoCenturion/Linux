
from random import randint
seriesUsuario = 0
seriesComputadora = 0
while True:
  print(
    '''
    \t :::Menu:::
    [1] Gana el primero que llega a "X" victorias
    [2] Gana el primero que llega a 3 victorias
    [3] Gana el primero que llega a 5 victorias
    [4] Mostar resultados
    [0] Salir
    '''
  )
  opcion = int(input("Ingrese una opcion: "))
  if opcion == 1:
    victoriasParaGanar = int(input("Cantidad de victorias? "))
  elif opcion == 2:
    victoriasParaGanar = 3
  elif opcion == 3:
    victoriasParaGanar = 5
  elif opcion == 4:
    print(f"""
    \t :::RESULTADOS:::
    - Series: Vos {seriesUsuario} Compu: {seriesComputadora}
    """)
    continue
  elif opcion == 0:
    break
  else:
    print("Ingresa una opcion valida!!")
    continue
  
  # A jugar piedra papel
  victoriasUsuario = 0
  victoriasComputadora = 0
  while victoriasUsuario < victoriasParaGanar and victoriasComputadora < victoriasParaGanar:

    miOpcion = int(input("elegir piedra(1), papel(2) o tijeras(3): "))
    computadoraOpcion = randint(1,3) # Un numero del 1 al 3

    if miOpcion == computadoraOpcion:
      print("Empate")
    elif miOpcion == 1: # Piedra
      if computadoraOpcion == 2: # Papel
        print("Gana Computadora, Papel mata a piedra")
        victoriasComputadora = victoriasComputadora + 1
      else:
        print("Ganaste, Piedra mata a Tijeras")
        victoriasUsuario = victoriasUsuario + 1
    elif miOpcion == 2: # Papel
        if computadoraOpcion == 1: # Piedra
          print("Ganaste, Papel mata a Piedra")
          victoriasUsuario = victoriasUsuario + 1
        else:
          print("Gana Computadora, Tijeras mata a Papel")
          victoriasComputadora = victoriasComputadora + 1
    elif miOpcion == 3: # Tijeras
        if computadoraOpcion == 1: # Piedra
          print("Gana Computadora, Piedra mata a Tijeras")
          victoriasComputadora = victoriasComputadora + 1
        else:
          print("Ganaste, Tijeras mata a Papel")
          victoriasUsuario = victoriasUsuario + 1
    print(f":::Serie actual, se necesitan {victoriasParaGanar} victorias para ganar:::\n::: vos {victoriasUsuario} PC {victoriasComputadora} :::")
  # analizamos quien gano la serie e incrementamos el contador
  if victoriasComputadora < victoriasUsuario:
    seriesUsuario = seriesUsuario + 1
    print(f"###### Ganaste esta Serie ({victoriasUsuario} - {victoriasComputadora})")
  else:
    seriesComputadora = seriesComputadora + 1
    print(f"###### Perdiste esta Serie ({victoriasComputadora} - {victoriasUsuario})")

print("fin del Programa")
