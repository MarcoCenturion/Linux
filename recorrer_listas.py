listanueva = ['jose','Luis','Marco',
              ['Pedro','Micaela'],['Belen','Lali'],
              ['Maria','Susana',['josefina','esteban','luca']]]

def recorrer(listado):
    for listaint in listado:
        if isinstance(listaint, list):
            recorrer(listaint)
        else:
            print(listaint)

recorrer(listanueva)
