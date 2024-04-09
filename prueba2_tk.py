import tkinter as tk

# Create the root window
root = tk.Tk()

# Create a label widget
label = tk.Label(root, text="Cotizador de Aéreos!")

# Create a button widget
button = tk.Button(root, text="Cambiar texto")

# Bind the button to an event handler
button.bind("<Boton-1>", lambda event: label.config(text="Proximo Texto"))

# Pack the widgets
label.pack()
button.pack()

# Start the event loop
root.mainloop()
