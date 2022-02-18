import os
from PIL import Image,ImageDraw,ImageFont

def watermark(filename, text,pic):
    # Crea una instancia del objeto de imagen
    img = Image.open(filename)
    w, h = img.size  # Obtenga el ancho y el alto de la imagen para calcular la posición relativa de la imagen
    print(pic+"Altura de la imagen:",h)
    print(pic+"Ancho de la imagen:",w)
    print("==========================================")
    # Establecer fuente, tamaño de fuente
    font = ImageFont.truetype("DejaVuSerifCondensed.ttf", int(w/20))  
    draw = ImageDraw.Draw(img)

    '''
           Los cuatro ajustes de parámetros de draw.text: posición del texto (abscisas, ordenadas) / contenido / color / fuente
           El primer parámetro ajusta la posición relativa de la inserción de texto (la dirección del eje de coordenadas de la pantalla es la siguiente)
                   →w
                  ↓
                   h
     '''
    

    draw.text((w/4,h/1.05), text=text, fill=(255, 51, 0), font=font)
    # Crear si la siguiente carpeta no existe
    if not os.path.exists("marked_images"):
        os.mkdir("marked_images")
    save_name=pic.split(".")[0]+"_marked.jpg"		#Establezca el nombre de la imagen después de agregar la marca de agua
    img.save("./marked_images/"+save_name)

if __name__ == '__main__':
    text = "GNU©2022MarcoCenturion"
    director_path="/home/marco/Linux/prueba/"				#Guardar la ruta de la carpeta de imágenes
    pictures=os.listdir(director_path)			# Obtenga todos los nombres de las imágenes en la carpeta
    for pic in pictures:
        filename=director_path+pic#Construye el nombre de la ruta de cada imagen
        watermark(filename,text,pic)			#Añadir marca de agua
    print("Todo procesado")
