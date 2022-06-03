[Turismo y Hoteleria Consultora](logo_th.png)

[[toc]]

## Capítulo III 

En este tercer módulo vamos a ver todas las funciones de post venta, el seguimiento que debemos hacer de las reservas que tenemos en nuestro OID.  


![Turismo y Hoteleria Consultora](index.png)

## Colas.

En el Manual de Reservas, el tratamiento de las colas está entre las páginas 119 a 126.  

Las colas de mensajes son el formato en que todos los involucrados en la gestión de los PNR's se comunican.  Las cías. aéreas hacen un cambio de horario, y automaticamente se generan mensajes por el sistema de colas a todos los "Dueños" de esas reservas.  Los dueños son los OIDS, la oficina de Amadeus que generó ese PNR o que tiene el control de las colas.

Es absoluta responsabilidad de esta oficina -el responsable de colas- el tomar acción sobre cada uno de los mensajes que le llegan a la Agencia.  Toda reprogramación, cancelación, cambio viene por esta vía.

A las colas de la oficina llegarán.

- Cambios de horario, itinerario, cancelación de vuelos

- Expiración de tiempo límite de emisión de tkts de una reserva.

- Cambios en los servicios especiales SSR.

### Mostrar Mensajes en colas:

- QT  Muestra solo las colas que tienen mensajes 
- QTQ  Muestra todas las colas, tengan o no tengan mensajes


### Números de colas:

|QUEUE|E-D|IDENTIFICION|CAT|EXPLICACION
|---|---|---|---|---|
|94 |E|MSG-CP|0-4|Mensaje – Customer Profile
|96 |E|MSG-PDR|0-3|Mensaje – PNRs de fecha pasadas
|97 |D|MESSAGE|0-3|Mensajes recibidos por la agencia de viajes
|0 |E|GENERAL|0|PNR enviado manualmente a un número de queue inexistente,el sistema lo reubica en la queue 0
|1 |D|CONFO|0-6|PNRs que recibieron un código de aviso para alguno de los segmentos o servicios especiales, excepto confirmación de lista de espera y/o cambio de horario.
|2 |D|KL|0|PNRs con segmentos aéreos confirmados de lista de espera KL
|3 |E|OPTION|0-1|PNRs que tienen un elemento de Opción OP
|4 |E|RPCHNG|0-1|PNRs cuya oficina de responsabilidad RP fue cambiada, el PNR es enviado a la Queue 4 de la oficina receptora
|7 |D|SKEDCHG|0-140-120|PNRs que recibieron un aviso de cambio de horario o fecha
|8 |D|TKTG|0|PNRs con fecha límite para emisión de tickets TKTL
|9 |D|OA|0|PNRs cuya oficina de queue ha sido cambiada 
|12 |E|XTL|0-2|PNRs cuya fecha límite para la emisión de tickets TKTL expiró aéreos u otros servicios especiales 24 horas después del pedido inicial, el sistema envía un mensaje al proveedor, si 48 horas después el segmento NO tiene el status HN solicitado, el sistema pone el PNR en queue
|23 |E|RQR|0-2|PNRs que no han recibido respuesta para los segmentos
|80|E|PTA|0-2|PNRs que tienen información de PTA
|87|D|GRPS|0-14|PNRs de grupos

### Códigos de mensajes

Listado de los Códigos de Aviso que son enviados por los proveedores de servicios y los Códigos de Status en que se convierten después de la transacción ETK o ERK:

|CODIGOS DE AVISO|CODIGOS DE STATUS
|---|---|
|KK Confirmado| HK Confirmado
|UU Lista de espera|HL Lista de espera
|KL Confirmado de lista de espera|HK Confirmado
|US Venta rechazada, en lista de espera|HL Lista de espera
|NO No se tomó acción|Pasa a la historia 
|UC Imposible confirmar|Pasa a la historia
|UN El vuelo o la clase no opera|Pasa a la historia
|TK Cambio de horario | HK Confirmado
|TL Cambio de horario| HL Lista de espera
|TN Cambio de horario |HN Solicitado

### Comandos para trabajar colas

|Comando|Traducción Humana|
|---|---|
|QS0 |Ingresar a la cola 0
|QS7C1D3 |Ingresar a cola 7 categoría 1 rango 3
|QN|Eliminar de cola el PNR y continúa con el siguente
|QD|Difiere el tratamiento del PNR y lo pasa al final de la fila
|QI|Ignora el PNR y lo deja al comienzo de la fila
|ETK|Confirma todos los cambios en el PNR, cierra y continúa con el siguiente.  Si no quedan mas PNRs en la cola, sale del modo COLAS
|ERK|Confirma todos los cambios y recupera nuevamente el PNR

## Tarifas

El objetivo de este módulo es familiarizarse con el sistema de tarifas de Amadeus.

- Desplegar las tarifas publicadas para un par de ciudades
- Consultar las reglas y condiciones de una tarifa
- Consultar la ruta de una tarifa
- Consultar tasas de cambio y efectuar conversiones de monedas
- Calcular cargos por exceso de equipaje
- Cotizar un itinerario sin PNR (Cotización Informativa)
- Tarifar el itinerario reservado en un PNR
- Buscar la tarifa más baja disponible para el itinerario reservado en un PNR
- Buscar la tarifa más baja posible para el itinerario reservado en un PNR

Por regla es útil recordar 

> FQ despliegues fuera del PNR

> FX despliegues dentro de un PNR armado

### FQD Despliegue de tarifas públicas 

Fare Quote Display, es la forma en que vemos las tarifas publicadas en un par de ciudades dado.  Interpretar correctamente la respuesta de Amadeus nos va a servir para entender la lógica y tener una visión mas exacta.

|Comando|Descripción
|---|---|
|FQD|Despliegue de tarifas en un par de ciudades.  Comando Principal.
|Despues del FQD.
|FQN|Notas de las tarifas.  Seguido a un FQD.
|FQR|Ruta obligatoria de la tarifas.  Seguido a un FQD.
|FQS|Booking.  Seguido a un FQD.

```FQD BUELON/13APR22/A-AR```

|Comando|Descripción
|---|---|
|FQD BUELON/S|Ver tarifas publicadas de menor a mayor (s) entre un par de ciudades
|FQD BUELON/A-IB|Idem pero no quiero ver IB, hasta 3 separadas por coma ','
|FQD MDZRIO/AG3/D10JUL*22JUL|Para una cía puntual con fecha de ida y regreso puntuales
|FQD ROSSSA/AAR/D20AUG**01SEP|Con un rango de fechas para el viaje
|FQD CORCTG/AAR/IX|Mostrar tarifas para este par de ciudades, pero de menor a mayor
|FQD CORCTG/AAR/IO|Mostrar tarifas para este par de ciudades, solo one way
|FQD CORCTG/AAR/IR|Mostrar tarifas para este par de ciudades, solo roud trip
|FQD BUEMIA/ALA/R,-CD|Mostrar tarifas para este par de ciudades, con descuento para menores.  En ciertas rutas y mercados, hay tarifas especiales para acompañantes, menores, militares, clérigos, estudiantes, etc.  Para ver el listado de códigos FQL\*
|FQD CORCTG/AAR/R,-NAP|Mostrar tarifas que no tenga tiempo anticipado de emisión AP, con el signo menos '-'.  Pueden ser que no exijan mínimo NMN o máximo NMX, que no tengan penalidad o permitan devolución[^1].

[^1]: Con el signo Menos obligamos a que la búsqueda excluya ese filtro, si lo agregamos sin el signo menos vamos a forzar al sistema a solo traer respuestas que incluyan el filtro.

### Respuesta del FQD

Para entender la respuesta del sistema a un FQD, recomendamos la lectura detenida de las páginas 104 a 106.  

### FQN Despliegue de notas de tarifas

Luego de ver las tarifas publicadas entre un par de ciudades con el comando FXD podemos ver las notas asociadas a esas tarifas, el routing obligatorio, el booking obligatorio, etc.

Para ver una regla, solo tenemos que pedir con FQN seguido del número de línea de la regla.

```FQN1*LIST``` Con este comando vemos el listado completo de los índices de la regla. Para ingresar a ver el título **Venta anticipada** de la tarifa del renglón 1, solo tenemos que indicar ```FQN1*AP```, para ver el mínimo ```FQN1*MN```, para ver el descuento para menores ```FQN1\*CD```.

### FQR

Para tarifas que tienen un routing obligatorio debemos ingresar, si es para el segmento 1 ```FQR1``` posiblemente tenemos una tarifa publicada con LA para la ruta CORMIA::


### FQP Cotizar una ruta sin PNR

### FXP Cotizar un PNR Armado


### Otros comandos útiles

|Comando|Descripción
|---|---|
|FQC|Cambio de Monedas

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



