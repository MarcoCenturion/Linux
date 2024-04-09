import tkinter as tk

# Create the root window
root = tk.Tk()

# Create a label widget
label = tk.Label(root, text="Hello, world!")

# Create a button widget
button = tk.Button(root, text="Change text")

# Bind the button to an event handler
button.bind("<Button-1>", lambda event: label.config(text="New text"))

# Pack the widgets
label.pack()
button.pack()

# Start the event loop
root.mainloop()
