from tkinter import *
from tkinter import simpledialog

ws = Tk()
ws.title("Cotizador Amadeus")
ws.geometry('200x200')
ws.config(bg='#4a7a8c')

answer1 = simpledialog.askstring("Cabecera","Indicar la Cabecera TH GR NI PA",parent=ws)
if answer1 is not None:
    print("La Cabecera será ", answer1)
else:
    print("Debes indicar una cabecera para continuar")

answer2 = simpledialog.askinteger("Fee","Indica el Fee a aplicar por pasajero",parent=ws,minvalue=50000, maxvalue=200000)
if answer2 is not None:
    print("El fee seleccionado es ", answer2)
else:
    print("Debes indicar un fee para continuar")

answer3 = simpledialog.askinteger("Dolar Blue","Indicar Dolar tipo vendedor ",parent=ws,minvalue=600, maxvalue=2000)
if answer3 is not None:
    print("El tipo de cambio es ", answer3)
else:
    print("Debes indicar un tipo de cambio para poder continuar")

answer4 = simpledialog.askinteger("Tarifa Mia","Indicar la tarifa de la cotización en USD ",parent=ws,minvalue=100, maxvalue=5000)
if answer3 is not None:
    print("La tarifa en USD es ", answer4)
else:
    print("Debes indicar una tarifa emitiendo en Miami")

answer5 = simpledialog.askstring("Pegar Tst y PNR","Agregar el TST y el PNR ",parent=ws)
if answer3 is not None:
    print("La mascara y el tst ", answer5)
else:
    print("Debes indicar una mascara e itinerario")

ws.mainloop()
