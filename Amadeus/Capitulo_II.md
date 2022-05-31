![Turismo y Hoteleria Consultora](logo_th.png)

[[toc]]

### Capítulo II

Este segundo módulo 

![Turismo y Hoteleria Consultora](index.png)

### PNR - Campos obligatorios

En esta sección armaremos el PNR con sus campos obligatorios, sin los cuales no podemos cerrar el PNR (Passanger name record).  

|Comando Amadeus|Traducción humana|
|---|---|
|NM1WATSON/JOHN|Nombre para un solo pasajero Adulto|
|NM1FERNANDEZ/JUAN(CHD)|Nombre de un pasajero CHD|
|NM2FERNANDEZ/JUAN/MARIA(INFWATSON/ANA)|Pasajero adulto con un INF con apellido distinto|
|NM2FERNANDEZ/JOSE/ROCIO 1LOPEZ/JULIO|Dos Apellidos iguales y uno distinto|
|AP BUE +5411224422|Contacto del pasajero|
|APE-JUANPEREZ//GMAIL.COM|Contacto email del pasajero|
|RFJUAN|Firma.  Es quien solicita la reserva.|
|TKXL10FEB/1800|Tiempo Límite para emitir con cancelación automática del PNR el 10FEB a las 1800 hs.[^1]|
|8/NUEVO DATO|Para cambiar los datos del segmento 8|

[^1]: Si bien es lícito utilizar TKOK o TKTL para cerrar un PNR, es una práctica aconsejada TKXL para que de manera automática, llegada esa hora y esa fecha, se cancele todo el PNR.  De esta manera evitamos cargos de la cía aérea por segmentos XX.  

### Campos auxiliares del PNR

|Comando Amadeus|Traducción humana|
|---|---|
|OP10JUN|El 10 de JUN aparecerá en Cola 3 este PNR como un recordatorio.|
|OP/RECORDATORIO DE ALGO IMPORTANTE|Texto libre despuśe de la Barra hasta 256 caracteres|
|RM|Campo comentario.  Aquí podemos escribir hasta 256 caracteres por renglón y se guardan en la historia.|
|RC|Campo comentario solo la la oficina que lo crea.  No es visible en otras agencias ni cías aéreas.|
|OSLACTCE JUANPEREZ//GMAIL.COM |Osi Other Service Information, en este caso informamos el contacto del pasajero a LA la @ se escribe como //|
|OSCMCTCT +5411512222|Contacto telefónico del pasajero.|
|OSARVIP/P1|Asociamos la información a AR de uno solo de los pasajeros del PNR.|
|SRFOIDLAHK1-NI23111311|Foid, agregamos el DNI muchas Cías. aéreas solicitan el nro de docuemnto para la emisión.|
|SRFOIDLAHK1-PP23111311|Foid, agregamos el Pasaporte.|
|FHE 001-1234567890/P2|Nro de Tkt a la cía aérea.|
|SRVGML/P1-2/S6|Solicitud de Comida vegerariana para los pasajeros 1 y 2, en el segmento 6.|
|SRWCHR/P1/S3|Solicitud de Silla de ruedas para el pasajero 1 en el segmento 3.|
|SRFQTVAR-AR80434321|Pasajero frecuente de AR.|
|FFNAA-0WV3178,IB|Cargar datos del pasajero frecuente de AA en vuelos de IB|
|SRDOCS BA HK1-P-GBR-012345678-GBR-30JUN73-, M-14APR09-JOHNSON SIMON-JEAN PAUL/P1/S3|SECURE FLIGHT INFORMATION (SR DOCS)| 
|HE MEAL CODES|Ver el listado de Códigos de comidas|
|SR PSPT BA HK1-123456-BR-05MAR57-DASILVA/PAULO-M-H/P1|Iformación del pasaporte completa|

### Historia del PNR

|Comando Amadeus|Traducción humana|
|---|---|
|RH|Abrir la histora del PNR|
|RH-ALL|Ver la historia del PNR y su historia de colas|
|RHQ|Colas soalmente|
|RHA|Ver la historia de los tramos aéreos solamente|
|RHK|Solo los elementos del/los tkts|
|RHF|Solo la sección tarifaria|

Con este comando ingresamos a todo el trazado histórico de todas las transacciones de una reserva, con el detalle de quien y en que momento realizó cada acción.

### Recuperar PNR

|Comando Amadeus|Traducción humana|
|---|---|
|RTCODIGO|Recupera un Código de reserva puntual|
|RT/FER|Trae un listado de Apellidos que empiecen con FER|
|RTCM101/20JUNCOR-FER|Recupera pasajeros de un vuelo puntual, en un aeropuerto de salida puntual cuyo apellido comience con FER.|
|RT1|Recupera el primer PNR de la lista|
|IG|Ignora todas las transacciones hechas en una reserva desde su recuperación.|
|IR|Ignora la reserva y vuelve a recuperarla para que no tengan validez las últimas acciones.|
|ER|Cierra la reserva para que apliquen los últimos cambios y la recupera nuevamente.|


### Cambios

|Comando Amadeus|Traducción humana|
|---|---|
|XE2|Cancela el renglón 2, puede ser cualquier segmento del pnr, nombre, vuelo, ap, etc|
|XE4,5|Cancela estos dos sementos solamente|
|XE2-9|Cancela todo lo que exista entre 2 y 9|
|9/18JUN|Cambia la fecha que tenía -por ejemplo- el campo TL por 18JUN.|
|XI|Cancela todo el itinerario|


### Replicar un PNR

Cuando queremos hacer una reserva con los mismos tramos utilizamos el comando RRN y replica -de haber lugares- los mismos vuelos y clases.

|Comando Amadeus|Traducción humana|
|---|---|
|RRN|Copia todos los tramos de todos los pasajeros|
|RRN/6|Copiar ITINERARIO y cambiar número de pax a 6|
|RRN/P1,3-5|Copiar PNR de pax 1,3,4 y 5|
|RRN/S2-5,9|Copiar sólo segmentos 3,4,5 y 9|
|RRN/SX5|Copiar todos los segmentos excepto el 5.|
|RRA|Copiar los segmentos y generar un AXR|

### Compartir un PNR

|Comando Amadeus|Traducción humana|
|---|---|
|ESBUEG12100-B|Compartir con la OID BUEG2100 un pnr para lectura y escritura -B|
|ESBUEG12100,TUCG12100-B|Compartir con dos oficinas un pnr para lectura y escritura -B|
|ESBUEG12100-B,TUCG12100-R|Compartir con dos oficinas un pnr para escritura y lectura -B en el primero y lectura solamente en el segundo -R|

### ITINERARIO

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

## Contáctenos:

```json
{
  "firstName": "Marco Adrián",
  "lastName": "Centurión",
  "Email": "aulavirtualturismo@gmail.com",
  "Tel/Whats": "+543513070654",
  "Web": "https://thconsultora.com.ar"
}
```
Para mayor información sobre cursos, noticias y más
http://thconsultora.com.ar 
http://thconsultora.com.ar/blog

![Turismo y Hoteleria Consultora](logo_th.png)

![Turismo y Hoteleria Consultora](fondo_aereos2.png)
![Turismo y Hoteleria Consultora](fondo_aereos1.png)

