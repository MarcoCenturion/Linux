from tkinter import *
from tkinter import ttk
root = Tk()
frm = ttk.Frame(root, padding=10)
frm.grid()
ttk.Label(frm, text="Hello World!").grid(column=0, row=0)
ttk.Button(frm, text="Quit", command=root.destroy).grid(column=1, row=0)
root.mainloop()



'''tk.Label(first, text="Cabecera ").grid(row=0)
ttk.Label(first, text="Fee ").grid(row=1)
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

first.mainloop()'''
