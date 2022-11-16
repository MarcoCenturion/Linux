# First we need to import our dependencies:
import sys
from PIL import Image
from termcolor import colored
import colorama

# Leer la Imagen
colorama.init()
try:
    image_path = sys.argv[1].strip('-')
except:
    image_path = input('~/imagenes/indio1.jpg')

# Convertirlo a escala de grises
class AsciiArt:
    def __init__(self, img_path):
        self.path = image_path
        self.img = Image.open(self.path)

# redimensionar la imagen
    def image(self):
        width, height = self.img.size
        aspect_ratio = height/width
        new_width = 120
        new_height = aspect_ratio * new_width * 0.55
        img = self.img.resize((new_width, int(new_height)))
        img = img.convert('L')
        pixels = img.getdata()

# Convertir los pixeles en letras de este array
        chars = ["B", "S", "#", "&", "@", "$", "%", "*", "!", ":", "."]
        new_pixels = [chars[pixel//25] for pixel in pixels]
        new_pixels = ''.join(new_pixels)

# recorrer la cadena de caracteres y convertirla en multiples cadenas 
        new_pixels_count = len(new_pixels)
        ascii_image = [new_pixels[index:index + new_width]
                  for index in range(0, new_pixels_count, new_width)]
        ascii_image = "\n".join(ascii_image)
        print(ascii_image)

# Escribirlo a un archivo de texto
        file = "imagen_ascii.txt"
        with open(file, "w") as f:
            f.write(ascii_image)
            print(colored(f"saved art image to file as {file}", "yellow"))

if __name__ == "__main__":
    AsciiArt(image_path).image()

