cantidad = int(input("Indicar la cantidad de numeros a evaluar "))
suma = 0

for i in range(cantidad):
    numero=int(input("Indicar el numero a sumar: "))
    if numero >= 1000:
        suma = suma + numero
        
print("la suma total de los numeros mayores a 1000 ingresados es: ",suma)
