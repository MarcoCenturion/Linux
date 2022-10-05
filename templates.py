from flask import Flask
from flask import request

app = Flask(__name__) # Instancia, recibe name como parámetro

@app.route('/') #Decorador indica las rutas a las qeu el usuario puede ingresar
def index():  #Una funcion que retorna la pagina
    return 'Hola Mundo'

@app.route('/saludo') #Decorador indica las rutas a las qeu el usuario puede ingresar
def saludo():  #Una funcion que retorna la pagina
    return 'todo parece ser lo mismo\nahora que los cantos perran'

@app.route('/params') #Decorador indica las rutas a las qeu el usuario puede ingresar
def params():  #Una funcion que retorna la pagina
    param = request.args.get('params1','No tenemos ningun parametro pasado aun')
    param_dos = request.args.get('params2','No tenemos ningun parametro pasado aun')
    return 'El parametro es {}, {} :'.format(param,param_dos)

if __name__ == '__main__':
    app.run(debug= True, port=8000) # Ejecuta el servidor
