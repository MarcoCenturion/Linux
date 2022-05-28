![Turismo y Hoteleria Consultora](logo_th.png)

## Capítulo I 

Este primer módulo sirve para familiarizarnos con la nomenclatura, el idioma que maneja el GDS, la forma en que el sistema entiende nuestras preguntas y lo que espera de nosotros.  Si bien existe el modo gráfico, es conveniente que el usuario se familiarice con el idioma que habla todo el mundo en la industria.  

Como codificar ciudades, paises, prestando especial atención a la similitud de muchos puntos, que genera siempre errores de interpretación.  Veremos las tablas de horarios entre ciudades.  La disponibilidad de vuelos, como refinar esa disponibilidad y hacer las búsquedas mas precisas.

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
|TA|Ordenados de hora de llegada|
|TD|Ordenados por hora de salida|
|TE|Ordenados por horas transcurridas|
|TN|Por orden neutro|
|TNMADLON|Vuelos entre London y Madrid para la fecha en curso|
|TDMADLON/ABA,SK|idem pero solo para las cías BA y SK|
|TN10JUNROMMOW|Frecuencia de vuelos para un par de ciudades en una fecha específica|
|TNROMLIM/MO|Frecuencia para ver solo los vuelos de los lunes|

En la pantalla de Tablas de horario (de Timetable en inglés) vemos la programación semanal de los vuelos regulares.  Se muestra un rango alrededor de la fecha buscada.  Con los días de la semana de operación.  Se detallan vuelos sin paradas, vuelos directos y vuelos en conexión.

|Descripción|
|---|
|D = Operación Diaria.|
|X1 = Operación todos los días de la semana excepto Lunes.|
|347 = Operación Miércoles, jueves y Domingos.|


Fechas de inicio y fin de vigencia para cada número de vuelo.   

## Disponibilidad por pares de ciudades.  (AA, AD, AN)

Los despliegues de disponibilidad, pueden pedirse:  **AD** Disponibilidad por despegue, **AA** Por arribo o **AN** Neutral.  La diferencia la notamos en la respuesta.  

La disponibilidad standard, muestra la cantidad de lugares que quedan en un vuelo, con un mínimo de 7 -o más- para los vuelos almacenados en las bases de datos de Amadeus, o 4 -o más- para vuelos almacenados en otros GDS's.  Es importante destacar que las búsquedas son para 11 meses en adelante del mes en curso.  En algunas Low Cost, este tiempo es menor.  importante

Una pantalla de disponibilidad o de horarios muestra hasta 26 clases de servicios. En una pantalla de disponibilidad, para que el vuelo aparezca en la pantalla, debe haber al menos una clase disponible para reservar o poner en lista de espera.  Al lado de cada clase de servicio hay un código de estado. Estos códigos de estado pueden indicar la cantidad de asientos disponibles o si puede poner un vuelo en lista de espera. A continuación se ofrece una lista de los posibles códigos de estado para cada clase de servicio y su explicación, ejemplo:

Ejemplo de respuesta a un pedido de disponibilidad

~~~
14:  GF5157  F7 A4 J7 C0 Y7 H0 M0  LHR 3 MIA   1050A    305P   0*777       9:15
~~~

|Respuesta|Significado|
|---|---|
|14: |El renglón 14 muestra un vuelo no operado por la Cía. GF| 
|LHR 3 |Aeropuerto y terminal desde donde sale|
|MIA |Idem llegada|
|1050A|Hora de salida en formato AM PM, depende de la configuración del idioma|
|305P|Hora de llegada|
|0|Cantidad de escalas|
|777 |Equipo que opera el vuelo|
|9:15 |Tiempo total de vuelo|
|1-8 |Disponibilidad real|
|9 |Nueve o mas asientos|
|0 o L |No hay disponibilidad, se puede agregar a lista de espera|
|R |La cía aérea responderá cuando tenga lugares para el vuelo|


### Comandos

|Comando Amadeus|Traducción humana|
|---|---|
|AD10JUNMADLON|Búsqueda de lugares para el 10 de Junio del año en curso.  **AD** es filtrado por Despegue.  Búsqueda global sin indicarle horario, asume que es a las 1000 hs.|
|AD10JUNMADLON1900|Idem anterior pero forzando la búsqueda a vuelos a partir de las 1900 hs.|
|AA10JUNBUELON/X-SAO|La misma búsqueda indicándole al sistema que no tenga en cuenta conexiones vía SAO pero en lugar de filtrado por despegue, sea por Arribo|
|AA10JUNBUELON/XSCL|La misma búsqueda indicándole al sistema que **FUERCE** la búsqueda a conexiones vía **SCL**|
|AN10SEPBUELON|Disponibilidad para una Ida BUE LON sin especificar filtros|
|AN10SEPBUELON\*23SEP|Disponibilidad para una Ida y vuelta BUE LON sin especificar filtros|

#### Respuesta del sistema a un pedido Ida y Vuelta
~~~ AN19OCTMIALON*25OCT
** AMADEUS AVAILABILITY - AN **           36 TH 19OCT 0000
 1   BA2294  F9 A9 J9 D9 Y9 B9 H9 /MIA   LGW N  440P    610A+1E0/777       8:30
             K9 M9 L9 W9 V9 O9 Q9
 2   VS 006  J4 D4 W4 Y7 B7 L7 M7  MIA   LGW S  545P    655A+1 0.747       8:10
             Q7 X7
 3:  CO4406  J9 D8 Z6 Y9 H9 K9 B9 /MIA   LGW S  545P    655A+1 0/747       8:10
             V9 Q9 T9
 4   AA 056  F7 J7 Y7 B7 H7 Q0 K6 /MIA   LHR 3  730P    900A+1E0.777       8:30
             N3 M2 V0 L0
** AMADEUS AVAILABILITY - AN **           42 WE 25OCT 0000
11   BA2295  F9 J9 D9 Y9 B9 H9 K9 /LGW N MIA   1015A    240P  E0/777       9:25
             M9 L9 W9 V9 N7 O9 Q9
12:  CO4405  J8 D7 Z5 Y9 H9 K9 B9 /LGW S MIA   1045A    315P   0/747       9:30
             V9 Q9 T9
13   VS 005  J4 D0 W4 Y7 B7 L7 M7  LGW S MIA   1045A    315P   0.747       9:30
             Q7 X7
14:  GF5157  F7 A4 J7 C0 Y7 H0 M0  LHR 3 MIA   1050A    305P   0*777       9:15
             L0 Q0 D0
~~~

#### Explicación a la respuesta del sistema

|Respuesta del sistema|Significado|
|--|--|
|AMADEUS AVAILABILITY|Disponibilidad de salida|
|36 	|Número de días entre la fecha actual y la fecha de salida|
|TH 	|Día de la semana redundante|
|19OCT 	|Fecha de salida|
|0000 	|Hora por defecto de disponibilidad|
|** AMADEUS AVAILABILITY **|Disponibilidad de regreso|
|42 	|Número de días entre la fecha actual y la fecha de salida|
|WE 	|Día de la semana|
|25OCT 	|Fecha de regreso|
|0000 	|Hora por defecto de disponibilidad|


#### Mas opciones para disponibilidad de vuelos.

|Comando Amadeus|Traducción humana|
|---|---|
|AN02OCTMIANYC\*|Disponibilidad ida y vuelta en el día|
|AN12OCTMIALGA\*BOSFLL|Visualiza la disponibilidad entre dos pares de ciudades diferentes para la misma fecha|
|AN12OCTMIALGA\*+4BOSFLL |Visualiza la disponibilidad entre dos pares de ciudades diferentes con fecha de salida 4 días después|


## Refinamiento de la búsqueda.  (conexiones, cias, alianzas, clases, etc)

Las búsquedas globales de disponibilidad, tablas o de horarios, pueden refinarse para hacer búsquedas mucho mas específicas. 

|Comando Amadeus|Traducción humana|
|---|---|
|/AAA,AR,LA|Tanto TD, AD, o SD pueden refinarse para solo buscar vuelos de estas cías|
|/AA*A|Muestra solo vuelos de Star Alliance.  (A\*O One World o A\*S Sky Team)|
|\/A-KL|Excluir una cía. aérea|
|/CK|Solo ver disponibilidad de cabina Ejecutiva (CW para economy premium)|
|\/XMIA|Forzar las búsquedas a hacer conexión en Miami|
|\/X-MIA|Forzar que no haya conexiones en MIA|
|AD10NOVBUEMIA1900/X-SAO/ALA,AA/KC|Disponibilidad para salidas desde BUE a Mia a partir de las 1900 hs, sin conexión en SAO, para solo Lan y American, cabina Ejecutiva|
|FD|Solo vuelos Directos|
|FN|Solo vuelos sin escalas|

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



