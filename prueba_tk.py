import tkinter as tk

first = tk.Tk()
tk.Label(first, text="Cabecera ").grid(row=0)
tk.Label(first, text="Fee ").grid(row=1)
tk.Label(first, text="Dolar Blue Vendedor ").grid(row=2)
tk.Label(first, text="Tarifa USD ").grid(row=3)

cabe = tk.Entry(first)
fee = tk.Entry(first)
blue = tk.Entry(first)
mia = tk.Entry(first)

cabe.grid(row=0, column=1)
fee.grid(row=1, column=1)
blue.grid(row=2, column=1)
mia.grid(row=3, column=1)

first.mainloop()