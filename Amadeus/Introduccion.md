### Introducción a Amadeus

[[toc]]

En este breve curso veremos los conceptos básicos para que desde cero, el usuario pueda familiarizarse con el GDS Amadeus en formato críptico.  Recomendamos la lectura detallada de los manuales y utilizar el sistema en modo Training para evitar generar reservas fantasma, que son penalizadas por las Cías. Aéreas.

El soporte va a estar disponible en el Foro que está disponible en el sitio.  Las respuestas estarán dentro de las 48hs.  La recomendación, es que dentro de los cursos programados, los alumnos respondan las inquietudes del foro, para cumplir la premisa de Glesser.

![La Pirámide del Aprendizaje](piramide-aprendizaje.png)

------

``` chart
{
  "type": "pie",
  "data": {
    "labels": [
      "Leer",
      "Escuchar",
      "Mirar",
      "Ver, Oir",
      "Hablar, Preguntar, Repetir",
      "Hacer",
      "Enseñar"
    ],
    "datasets": [
      {
        "data": [
          1,
          2,
	  4,
	  8,
	  16,
	  32,
	  64          
        ],
        "backgroundColor": [
          "#FF6384",
          "#36A2EB",
          "#FFCE56",
          "#F88C56",
          "#2FCE56",
          "#B9C5B6",
          "#EF3CE6"
        ],
        "hoverBackgroundColor": [
          "#FF6384",
          "#36A2EB",
          "#FFCE56",
          "#F88C56",
          "#2FCE56",
          "#B9CE56",
          "#EFCE56"
        ]
      }
    ]
  },
  "options": {}
}
```

---

### Manual de Reservas

Recomiendo bajar el Manual de reservas que está en esta sección y seguir este plan de lectura.  Practicar los comandos en modo Training.  Lo importante no es memorizarlos a todos, sino saber que existen refinamientos a cada comando, cada búsqueda tiene parámetros que hacen que la respuesta sera mucho mas adecuada a nuestras necesidades, aliviándonos de leer páginas y páginas, en la consola de Amadeus.

|Título|Contenido|
|---|---|
|Codificación y Decodificación|Pag. 19 a 25|
|Conversiones|Pag. 29 y 30|
|Help|Pag. 31 y 32|
|Disponibilidad y tablas de horario|Pag. 37 a 55|
|PNR|Pag. 56 a 99|
|FQD|Pag. 102 a 117|
|Colas|Pag. 119 a 126|

![Turismo y Hoteleria Consultora](index.png)
### Contenido

|Título|Contenido|
|---|---|
|Codificiación y Decodificacion (ciudades, aeropuertos, cías aéreas, etc)|Este es el *[Capítulo I](https://github.com/MarcoCenturion/Linux/blob/main/Amadeus/Capitulo_I.md)*|
|Coversiones|Este es el *[Capítulo I](https://github.com/MarcoCenturion/Linux/blob/main/Amadeus/Capitulo_I.md)*|
|Frecuencias de vuelos entre ciudades.  **(TA, TD, TN)**|Este es el *[Capítulo I](https://github.com/MarcoCenturion/Linux/blob/main/Amadeus/Capitulo_I.md)*|
|Disponibilidad por pares de ciudades.  **(AA, AD, AN)**|Este es el *[Capítulo I](https://github.com/MarcoCenturion/Linux/blob/main/Amadeus/Capitulo_I.md)*|
|Refinamiento de la búsqueda.  (conexiones, cias, alianzas, clases, etc)|Este es el *[Capítulo I](https://github.com/MarcoCenturion/Linux/blob/main/Amadeus/Capitulo_I.md)*|
|Vuelos, tarifas y armado de una reserva|Este es el *[Capítulo I](https://github.com/MarcoCenturion/Linux/blob/main/Amadeus/Capitulo_I.md)*|
|PNR |Este es el *[Capítulo II](https://github.com/MarcoCenturion/Linux/blob/main/Amadeus/Capitulo_II.md)*|
|Campos obligatorios **(NM, AP, TK, RF, itinerario)**|Este es el *[Capítulo II](https://github.com/MarcoCenturion/Linux/blob/main/Amadeus/Capitulo_II.md)*|
|Campos opcionales **(SR, OS)**|Este es el *[Capítulo II](https://github.com/MarcoCenturion/Linux/blob/main/Amadeus/Capitulo_II.md)*|
|Breve introducción a tarifas|Este es el *[Capítulo III](https://github.com/MarcoCenturion/Linux/blob/main/Amadeus/Capitulo_III.md)*|
|Colas|Este es el *[Capítulo III](https://github.com/MarcoCenturion/Linux/blob/main/Amadeus/Capitulo_III.md)*|
|MasterPricer **(FXD)**|Este es el *[Capítulo IV](https://github.com/MarcoCenturion/Linux/blob/main/Amadeus/Capitulo_IV.md)*|
|Offers **(OFS)**|Este es el *[Capítulo IV](https://github.com/MarcoCenturion/Linux/blob/main/Amadeus/Capitulo_IV.md)*|
|Help - Glosario de términos|Este es el *[Capítulo V](https://github.com/MarcoCenturion/Linux/blob/main/Amadeus/Capitulo_V.md)*|

Aprenderemos los diferentes comandos, los parámetros de esos comandos, el sistema de ayuda que tiene incluido Amadeus en su modo críptico.

### Buenas Prácticas

> Solicitar toda la documentación al pasajero ANTES de hacer el PNR.  Validarla.  Esto nos permite hacer la reserva con los nombres correctos.  Toda corrección posterior tiene costos, que por lo general paga la agencia.

> No divida los PNRS de cías que no almacenan sus asientos en Amadeus.  Dividir los PNRS solo en casos extremos.

> No genere segmentos fantasma en el sistema, las cías lo penalizan.

> No genere ocupación ficticia.

> No use nombres ficticios en los PNRS, las cías aéreas lo penalizan.

> Para práctica utilice el modo Training.

> No genere duplicidades de segmentos o de PNRS.

> Prestar atención al Tiempo mínimo de conexión.

> Mantenga todo el itinerario en un mismo PNR.

> Chequear colas todos los días.

> No cambie los nombres en los PNRS.

> Los segmentos LK y TK son garantizados por el GDS.

> Agregue en un OSI el contacto del pasajero y de la agencia, para seguimiento y cancelaciones.  Le resuelve muchos problemas al pasajero en su viaje.

> El campo RF es para que indique quien es la persona que le pidió a ud. la reserva, si indica PAX no da mucha información a los diez meses, al intentar buscar en la historia.

---


URL Amadeus Connect
https://www.sellingplatformconnect.amadeus.com/

DESCARGA material de apoyo:
https://thconsultora.com.ar/ - Sección "Contáctenos" 

Redes Sociales
Github: github.com/marcocenturion

Twitter: https://twitter.com/@aulavirtuaturis

LinkedIn: https://www.linkedin.com/marco-adrian-centurion

Youtube: https://www.youtube.com/channel/UCsJpj4sGM4oMU0vkbDVdHFQ

### Contáctenos:

Para mayor información sobre cursos, noticias y más
http://thconsultora.com.ar/blog

![Turismo y Hoteleria Consultora](logo_th.png)

![Turismo y Hoteleria Consultora](fondo_aereos2.png)
![Turismo y Hoteleria Consultora](fondo_aereos1.png)

