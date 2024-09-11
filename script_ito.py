import requests
from bs4 import BeautifulSoup

# URL del sitio web
url = '192.168.1.5'  # Cambia esto por la URL del sitio web que deseas extraer

# Realizar una solicitud GET al sitio web
response = requests.get(url)

# Comprobar si la solicitud fue exitosa
if response.status_code == 200:
    # Parsear el contenido HTML
    soup = BeautifulSoup(response.content, 'html.parser')

    # Encontrar los datos que deseas extraer
    # Este es un ejemplo, ajusta el selector según tus necesidades
    data = soup.find_all('p')  # Ejemplo: encontrar todos los párrafos
   
    # Abrir un archivo de texto para agregar los datos
    with open('datos_extraidos.txt', 'a', encoding='utf-8') as file:
        timestamp = datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')
        file.write(f'\nDatos extraídos el {timestamp}:\n')
        for item in data:
            file.write(item.get_text() + '\n')

    print("Datos extraídos y guardados en 'datos_extraidos.txt'")
else:
    print("No se pudo acceder al sitio web")
