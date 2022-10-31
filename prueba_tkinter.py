import tkinter as tk

class Aplicacion:

    # El constructor arma los objetos boton y etiqueta sobre la ventana
    def __init__(self):
        # Definimos un atributo en la clase Aplicacion y almacenamos el valor 1
        self.valor=1
        
        # Creamos la ventana y le fijamos un título
        self.ventana1=tk.Tk()
        self.ventana1.title("Controles Button y Label")
        
        # creamos un Label y le pasamos como primer parámetro la referencia a la ventana donde debe aparecer .
        # Como 2do argumento le pasamos el parámetro text con el valor inicial
        self.label1=tk.Label(self.ventana1, text=self.valor)
        # Para ubicar los controles visuales en la ventana usamos el metodo grid(nro columna y nro de fila)
        self.label1.grid(column=0, row=0)
        # color de la fuente
        self.label1.configure(foreground="red")

        # boton ubicado en la columna 0 y fila 1 con el texto "Incrementar"
        # Mediante la propiedad command llamamos a la funcion q incrementara el valor del label cuando
        # hagamos clic sobre el boton
        self.boton1=tk.Button(self.ventana1, text="Incrementar", command=self.incrementar)
        self.boton1.grid(column=0, row=1)

        # boton ubicado en la columna 0 y fila 2 con el texto "Decrementar"
        self.boton2=tk.Button(self.ventana1, text="Decrementar", command=self.decrementar)
        self.boton2.grid(column=0, row=2)

        # mostramos la ventana
        self.ventana1.mainloop()


    def incrementar(self):
        # incrementa el valor en 1 y lo actualiza en el label
        self.valor=self.valor+1
        self.label1.config(text=self.valor)

    def decrementar(self):
        self.valor=self.valor-1
        self.label1.config(text=self.valor)        

# creo el objeto llamando al constructor
aplicacion1=Aplicacion()
