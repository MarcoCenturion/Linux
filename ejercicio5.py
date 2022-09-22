edad = int(input("indicar la edad del usuario: "))

if edad < 18:
    print("No puede solicitar la licencia")
elif edad > 18 and edad < 56:
    print("Se otorga licencia por 5 años")
elif edad > 56 and edad < 80:
    print("Se otorga licencia por un año")
elif edad > 80:
    print("No se otorga Licencia")
