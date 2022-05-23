## Capítulo I

Este primer módulo sirve para familiarizarnos con la nomenclatura, el idioma que maneja el GDS.  Si bien existe el modo gráfico, es conveniente que el usuario se familiarice con el idioma que habla todo el mundo en la industria.  Como codificar ciudades, paises, prestando especial atención a la similitud de muchos puntos, que genera siempre errores de interpretación.  Veremos las tablas de horarios entre ciudades.  La disponibilidad de vuelos, como refinar esa disponibilidad y hacer las búsquedas mas precisas.

![Turismo y Hoteleria Consultora](index.png)

## Codificiación y Decodificacion

---

En esta sección veremos como comunicarnos en el idioma que el sistema nos entienda.  Para poder hacer una búsqueda necesitamos indicarle a Amadeus correctamente que estamos buscando y al revés interpretar que nos está diciendo.

|Comando Amadeus|Traducción humana|
|---|---|
|DANMADRID |Codificar un destino (puede ser ciudad, aeropuerto, estación de trenes, etc. en este caso **Madrid**|
|DACAEP |Decodificar un código en este caso **Aeroparque** |
|DAE732 |Decodificar un equipo con el que opera un vuelo, en este caso un 737 200 |
|DNA220 |Codificar o decodificar cías. aéreas.  En este Caso **Lufthansa** podemos indicarle el nombre de la Cía, el número o el código, en este caso **220**, **LH** o **Lufthansa** |

## Coversiones

En Amadeus tenemos comandos para convertir no solo monedas, sino una serie de utilidades a las que tenemos que prestar mucha atención.

|Comando Amadeus|Traducción humana|
|---|---|
|DDMIA|Diferencia Horaria desde la ciudad del OID local, desde donde se hace la consulta a Miami|
|DDMIA/LON|Diferencia horaria entre dos ciudades.|
|DM|Tiempo mínimo de conexión[^1] entre dos vuelos.|
|DMORY/CDG|Tiempo mínimo de conexión entre vuelos que llega y salen de dos aeropuertos distintos en la misma ciudad.|

[^1]:  Si bien el sistema lanza un alerta al intentar cerrar por primera vez el PNR, avisando que no se cumple este `Tiempo mínimo de conexión` lo muestra una sola vez.

## Frecuencias de vuelos entre ciudades.  (TA, TD, TN)

|Comando Amadeus|Traducción humana|
|---|---|
|||
|||


En la pantalla de Tablas de horario (de Timetable en inglés) vemos la programación semanal de los vuelos regulares.  Se muestra un rango alrededor de la fecha buscada.  Con los días de la semana de operación.

## Disponibilidad por pares de ciudades.  (AA, AD, AN)

Los despliegues de disponibilidad, pueden pedirse:  **AD** Disponibilidad por despegue, **AA** Por arribo o **AN** Neutral.  La diferencia la notamos en la respuesta.  :www

|Comando Amadeus|Traducción humana|
|---|---|
|AD10JUNMADLON|Búsqueda de lugares para el 10 de Junio del año en curso.  **AD** es filtrado por Despegue.  Búsqueda global sin indicarle horario, asume que es a las 1000 hs.|
|AD10JUNMADLON1900|Idem anterior pero forzando la búsqueda a vuelos a partir de las 1900 hs.|
|AA10JUNBUELON/X-SAO|La misma búsqueda indicándole al sistema que no tenga en cuenta conexiones vía SAO pero en lugar de filtrado por despegue, sea por Arribo|
|AA10JUNBUELON/XSCL|La misma búsqueda indicándole al sistema que **FUERCE** la búsqueda a conexiones vía **SCL**|

La disponibilidad standard, muestra la cantidad de lugares que quedan en un vuelo, con un mínimo de 7 -o más- para los vuelos almacenados en las bases de datos de Amadeus, o 4 -o más- para vuelos almacenados en otros GDS's.  Es importante destacar que las búsquedas son para 11 meses en adelante del mes en curso.  En algunas Low Cost, este tiempo es menor.  

## Refinamiento de la búsqueda.  (conexiones, cias, alianzas, clases, etc)

|Comando Amadeus|Traducción humana|
|---|---|
|||
|||

## Vuelos, tarifas y armado de una reserva

|Comando Amadeus|Traducción humana|
|---|---|
|||
|||


---

### URL Amadeus Connect
https://www.sellingplatformconnect.amadeus.com/

### DESCARGA material de apoyo:
https://thconsultora.com.ar/ - Sección "Contáctenos" 

### Redes Sociales
Github: github.com/marcocenturion

Twitter: https://twitter.com/@aulavirtuaturis

LinkedIn: https://www.linkedin.com/marco-adrian-centurion

Youtube: https://www.youtube.com/channel/UCsJpj4sGM4oMU0vkbDVdHFQ

### Contáctenos:

Para mayor información sobre cursos, noticias y más
http://thconsultora.com.ar 
http://thconsultora.com.ar/blog

![Turismo y Hoteleria Consultora](logo_th.png)

![Turismo y Hoteleria Consultora](fondo_aereos2.png)
![Turismo y Hoteleria Consultora](fondo_aereos1.png)

