import PySimpleGUI as sg

sg.theme('BluePurple')

layout =  [[sg.Text('Ingresar el archivo: ')]
        ,[sg.Input(key='file')],[sg.OK()],sg.Button('Cancelar')]


event,values = sg.Window('Introduccion a PySimpleGUI', layout).read()
sg.Popup(event, values[0])
