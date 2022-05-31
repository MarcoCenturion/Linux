![Turismo y Hoteleria Consultora](logo_th.png)

[[toc]]

### Capítulo IV

Este cuarto módulo enfocado en mejorar la experiencia del usuario que busca vuelos, unificando las taréas de búsqueda de disponibilidad y tarifa en una sola acción.  Un pasajero accede a miles de sitios on line con las mejores tarifas.  Comprará en una agencia minorista al público, incluso pagando unos pocos pesos mas, solo por la seguridad que le brinda tener un local físico, pero no podemos demorarle la respuesta a su pedido mas de un día.

![Turismo y Hoteleria Consultora](index.png)

### Master Pricer

En esta sección veremos los conceptos mas importantes de la herramienta de pago Master Pricer.  No viene incluida en la configuración standard de Amadeus por defecto, sino que es necesario solicitarla al Ejecutivo de cuenta, ya que es con cargo.

|Comando Amadeus|Traducción humana|
|---|---|
|FXD **2** ROM/D10AUGMIA/D20AUGROM|Búsqueda simple, 2 pasajeros ROM MIA ROM sin filtros|
|FXD BUE/D10AUG/**FD**MIA/D20AUGBUE|**FD** Solo vuelos directos de BUE a MIA, en caso de no indicar la cantidad de pasajeros, asume uno.  A exepción de tener un PNR iniciado con Nombres|
|FXD SCL/D10AUG**FD,N**MIA/D20AUGSCL|Solo vuelos directos y sin escalas entre SCL y MIA|
|FXD COR/D10AUG/FD0900MIA/D20AUG/FA1200COR|Salida a las 0900 de COR y Arribo a las 1200 a COR|
|FXD COR/D10AUGMIA--NYC/D20AUGCOR|Un tramo de superficie se indica con doble guion - - entre MIA y NYC|
|FXD COR/D10AUGMIA/D20AUGCOR/**R,NPE**|Solamente que muestre Tarifas Sin PENALIDAD RF=Reembolsables NAP=sin AP|
|FXD COR/D10AUGMIA/D20AUGCOR/**KC**|Solo ofertas en cabina Ejecutiva|
|FXD COR/D10AUGMIA/D20AUGCOR//KC,F|Dos cabinas distintas Ejecutiva y First, por defecto asume que las  busquedas deben ser en Economy KW = Economy premium|
|FXD COR,BUE,MDZ/D10AUGMIA/D20AUGCOR,MDZ,BUE|Saliendo de 3 posibles aeropuertos de origen (Comando ideal para agencias con pasajeros (por EJ) de LA  PAMPA)|
|FXD COR/D10AUG CUN,PUJ,SDQ/D20AUGCOR|idem + Aeropuertos de destino (Vacacional que busca CUN, pero  que podemos ganar la venta por ofrecerle un destino de playa similar):|
|FXD COR/D10AUGCUN,PUJ,SDQ/D20AUGCOR/A-AR|La misma ruta anterior, pero esta vez excluyendo AR, para excluir  la CIA A-AR Se pueden incluir hasta 3 cías AAR,UX,IB|
|FXD COR/D10AUGMIA,FLL,TPA/D20AUGCOR//A*A|La ruta mas barata a cualquiera de estos 3 destinos, con A*A =StarAlliance, A*O=OneWorld, A*S =SkyTeam|
|FXD COR/D10AUGBPS,SSA,NAT/D20AUGCOR/R,UP,UARBR00,UAZUL,U*OPERINT|La mejor tarifa a cualquiera de estos 3 destinos, NAT BPS ó SSA  incluyendo netas, publicas, nego G3, nego JJ y nego AD|
|FXD COR,BUE,ROS/D10AUGBPS,SSA,NAT/ D20AUGCOR,ROS,BUE/R,UP,UARBR00,U\*AZUL,U\*OPERINT5|IMPRESIONANTE: La mejor tarifa a cualquiera de estos 3  destinos, NAT BPS ó SSA incluyendo 1) netas, 2) publicas, 3) nego  G3, 4) nego JJ y 5) nego AD, saliendo de BUE ROS o COR|
|FXD COR/D10AUGPUJ,SDQ,HAV/ D20AUGCOR/RPFA,U*ARVPU,UP|La mas barata a PUJ SDQ o HAV publicas, netas y nego CM |
|FXD COR/D10AUGTRN/**DI-120K**/D20AUGCOR|Radio de 120 KM alrededor de un aeropuerto, en este caso TRN |
|FXS1|Ver las recomendaciones dentro del primer grupo |
|FXZ3|Seleccionar la recomendación 3 |

## Offers

|Comando Amadeus|Traducción humana|
|---|---|
|OFS/MK-100|Convertir la ruta en una Oferta (no tiene que haberse cerrado el  PNR) agregándole un markup de 100 en la moneda que se cotizó| 
|OFN-EMLaulavirtualturismo@gmail.com|Enviar las ofertas por Email del cliente|
|RTOF |Ver las ofertas dentro de un PNR de solo ofertas| 
|OFK2|Confirmar la Oferta 2| 

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

