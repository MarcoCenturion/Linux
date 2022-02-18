import cv2

# Avance de carga
img = input("Indicar la imagen: ")
cv2.imread(img)

# Añadir marca de agua de texto a la imagen
# # Cv2.putText (imagen, necesita agregar cadena, coordenadas a dibujar, tipo de fuente, tamaño de fuente, color de fuente, grosor de fuente)
img2 = cv2.putText(img, '(C)GNU_matito', (1, 1), cv2.LINE_AA, 2, (10, 151, 243), 4) 

# Guarda la imagen
cv2.imwrite('wj.jpg', img2)

# A continuación se muestra la imagen generada en la ventana emergente
cv2.imshow('img',img2)
cv2.waitKey(0)
cv2.destoryAllWindows('img')
