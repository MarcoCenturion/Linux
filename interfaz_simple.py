import PySimpleGUI as sg
sg.theme('DarkPurple1')

layout = [[sg.Text('Cual es tu nombre: ')],
         [sg.Input(key='-INPUT-')],
         [sg.Text(size=(40,1), key='-OUTPUT-')],
         [sg.Button('OK'), sg.Button('Salir')]],

window = sg.Window('THConsultora', layout)

while True:
    event, values = window.read()
    print(event,values)
    if event == sg.WINDOW_CLOSED or event == 'Salir':
        break
    # actualizacion en tiempo real de la ventana
    window['-OUTPUT-'].update('Hola ' * values['-INPUT-'])

window.close()
