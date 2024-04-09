#!~/pysimplegui/bin/python3.11.8
# -*- coding: utf-8 -*-
# Diccionarios a utilizar
# parametros 
#-------------------------------
# 1- cabecera 
# 2- fee 
# 3- blue 
# 4- tarifa en USS
# Clipboard = PNR + itin

import re
import sys
import pyperclip as clip

aeropuertos = {
    "ADD": "Addis Ababa, Ethiopia",
    "ADZ": "San Andrés",
    "AEP": "Aeroparque, Buenos Aires",
    "AKL": "Auckland, New Zeland",
    "ALC": "Alicante",
    "AMS": "Amsterdam, Países Bajos",
    "ASU": "Asunción, Paraguay",
    "ATH": "Atenas, Grecia",
    "ATL": "Atlanta, USA",
    "AUA": "Aruba",
    "AVV": "Melbourne, Australia",
    "BHI": "Bahia Blanca",
    "BCN": "Barcelona",
    "BOG": "Bogotá",
    "BRC": "San Carlos de Bariloche",
    "BUE": "Buenos Aires",
    "CDG": "Charles De Gaulle, París",
    "CGH": "Congonhas, Sao Paulo",
    "CJC": "Calama, Chile",
    "COR": "Córdoba",
    "CPC": "San Martín de los Andes",
    "CTG": "Cartagena de Indias",
    "CUN": "Cancún",
    "CUR": "Curazao, Antillas Holandesas",
    "CUZ": "Cuzco",
    "EWR": "Newark New York",
    "EZE": "Ezeiza, Buenos Aires",
    "FCO": "Fiumicino, Roma",
    "FLN": "Florianópolis",
    "FRA": "Frankfurt",
    "FTE": "El Calafate",
    "GIG": "El Galeao, Rìo de Janeiro",
    "GLA": "Glasgow, Escocia",
    "GRU": "Guarulhos, Sao Paulo",
    "GUA": "Ciudad de Guatemala",
    "GYE": "Guayaquil, Ecuador",
    "HAV": "La Habana, Cuba",
    "HOU": "Houston, Texas",
    "IAH": "Houston, Texas, USA",
    "IGR": "Puerto Iguazú, Argentina",
    "IGU": "Foz do Iguazu, BR",
    "IQQ": "Iquique, Chile",
    "IST": "Istambul, Turkey",
    "JFK": "John F. Kenedy New York",
    "JUJ": "Jujuy",
    "LAP": "La Paz, Mexico",
    "LAS": "Las Vegas",
    "LAX": "Los Angeles, California",
    "LGA": "La Guardia New York",
    "LGW": "London, Gran Bretaña",
    "LHR": "Heathrow, London",
    "LIM": "Lima, Perú",
    "LIS": "Lisboa, Portugal",
    "MAD": "Madrid, España",
    "MCO": "Orlando, Florida, US",
    "MDZ": "Mendoza",
    "MDQ": "Mar del Plata",
    "MEC": "Manta, Ecuador",
    "MEL": "Melbourne, Australia",
    "MEX": "México DF",
    "MIA": "Miami, USA",
    "MIL": "Milano",
    "MXP": "Malpensa, Milano",
    "NLU": "Felipe Angeles, Mexico DF",
    "ORD": "Chicago, USA",
    "ORY": "Orly, París",
    "POA": "Porto Allegre",
    "PMI": "Palma de Mallorca, Islas Baleares, España",
    "PTY": "Panamá",
    "ROS": "Rosario",
    "PUJ": "Punta Cana",
    "RDD": "Readding, California",
    "SCL": "Santiago de Chile",
    "SDQ": "Santo Domingo, Repùblica Dominicana",
    "SDU": "Santos Dumont Rio de Janeiro",
    "SFO": "San Francisco, California",
    "SJD": "Los Cabos, Mexico",
    "SLA": "Salta",
    "SMR": "Santa Marta, Colombia",
    "SSA": "Salvador, Bahia",
    "SVQ": "Sevilla",
    "SYD": "Sydney",
    "TIJ": "Tijuana, Mexico",
    "UIO": "Quito, Ecuador",
    "USH": "Ushuaia",
    "VLC": "Valencia, España",
    "VVI": "Santa Cruz de la Sierra, Bolivia"
}

lineas = {
    "AR": "Aerolíneas Argentinas",
    "CM": "Copa Airlines",
    "LA": "Latam",
    "KL": "KLM, Royal Dutch Airlines",
    "AA": "American Airlines",
    "DL": "Delta Airlines",
    "UX": "Air Europa",
    "IB": "Iberia",
    "AF": "Air France",
    "UA": "United Airlines",
    "G3": "Gol Lihnas Aereas",
    "WJ": "Jet Smart",
    "OB": "Boliviana de Aviación",
    "H2": "Sky Airlines",
    "ET": "Ethiopian Airlines",
    "JA": "Jetsmart Spa"
}

# 0P|20|30|32|2B|PC|1P|2P|3P
franquicia = {
    "0P": "Solo 1 carryon de 10 kg. en cabina, sin equipaje en bodega",
    "1P": "Carryon de 10 kg. en cabina + una maleta despachada en bodega de 23kg",
    "2P": "Carryon de 10 kg. en cabina + dos maletas despachadas en bodega de 23kg c/u",
    "30": "Carryon de 10 kg. en cabina + una maleta despachada en bodega de 30kg",
    "3P": "Carryon de 10 kg. en cabina + tres maletas despachadas en bodega de 23kg c/u"
}

devoluciones = {
    "NON-REF": "No permite devoluciones ni cambios",
    "NON-END": "No permite devoluciones ni cambios"
}

financiacion = {
    "AR": "https://www.aerolineas.com.ar/es-ar/reservasservicios/bancos",
    "WJ":"https://jetsmart.com/ar/es/minisitios/medios-de-pago"
}

cabecera = {
    "th": "\n*TURISMO Y HOTELERÍA CONSULTORA*\nwww.thconsultora.com.ar | email: marco@thconsultora.com.ar |\
 Tel/Wp: +543513070654",
    "gr": "\n*GRIFFIN VIAJES* | Leg. 10659 | San Jeronimo 167 Local 16 Gal. Saint Michell\nwww.griffinviajes.com.ar | email: aulavirtualturismo.com.ar |\
 cel/Wp: +543513070654 | Tel: +543514245547 ",
    "pa":"\n*Pampero Viajes y Turismo | EVT Leg 18042* | \nAviador Richardson 2150 1ºA - Córdoba | Tel: 3515190438 | Mail: pamperoviajesyturismo@gmail.com",
    "ni":"\n*TRIBU TRAVEL TOUR* | Leg. 18163 \nhttps://tribu-travel-tour.misitiosimple.com/\nAvellaneda 534 Alta Gracia | Tel/Wp:3513019736"
}

# Abrimos el archivo pnr.txt en modo lectura solamente
# lo leemos
# con print nos aseugramos de ver el contenido

tst = clip.paste()
print(tst)

# Captura datos
# Importamos la librería RE, definimos un fee por defecto
# y preguntamos al usuario si quiere cambiarlo

'''
cabe = input("\n---------------------------------------\nDefinir Cabecera th, ni, gr, pa: ")
cabe = cabe.lower()
fee = int(input("\n-------------------------------------\nDefinir fee en ARS oficial\nPor defecto es ARS46000: "))
blue = int(input("\n-------------------------------------\nIndicar el tipo de cambio blue Vendedor: "))
ventausd = int(input("\n----------------------------------\nIndicar el precio en USD emitiendo en MIA: "))
'''

cabe = sys.argv[1].lower()
fee = int(sys.argv[2])
blue = int(sys.argv[3])
ventausd = int(sys.argv[4])

# Desmenuzamos el archivo buscando los campos puntuales con expresiones regulares
pos_carrier=tst.find('CARRIER')
cia=tst[(pos_carrier+8):(pos_carrier+10)]
cambio=re.findall('1USD=(......)', tst)
route = re.findall(r'^\s{2}\d{1}\s{2}\w{2}.{53}',tst, flags=re.M)
orig = re.findall('\n (\w{3})\n', tst)[0]
fare_ars = re.findall('\nARS(\D{0,3}\d{1,6}.\d{2})', tst)[0][1]
bagage = re.findall(' (0P|20|30|32|2B|PC|1P|2P|3P)\n', tst)[0]
ltd = re.findall('(DTE \d{2}\D{3}\d{2}/\d{2}:\d{2}|DTE \d{2}\D{3}\d{2})', tst)[0]
date = re.findall(r'(?:[ |*][A-Z]{1}.)((?:\d{2}\D{3} ))', tst)
ttl = re.findall('\n(ARS|AR|ARS )(\d{1,7}.\d{2})', tst)[-1][-1]
ref = re.findall('\n(ENDOS|NONREF|NON-REF|NON|TICKETS)', tst)[0]
retenc = re.findall('(\d{0,6}.\d{2})(Q1 |-Q1 )', tst)
#fare_usd = re.findall('USD(\D{0,6}\d{1,6}.\d{2}) ', tst)[0]

# Los tramos los tomamos del frente del PNR y los recortamos para obtener solo la info relevante
tramo=[]
clases=[]
contador = len(route)

for renglon in route:
    vuelo = renglon[5:12]
    clase = renglon[12:13]
    fecha = renglon[14:20]
    horarios = renglon[34:44]
    #orides = renglon[22:29]
    ori = renglon[22:25]
    des = renglon[25:28]
    tramo.append(vuelo+fecha+aeropuertos.get(ori) + " / " + aeropuertos.get(des)+" "+horarios)
    clases.append(clase)
    contador = contador-1

# Juntamos toda la info de los tramos
tramos="\n".join(tramo)
clases="".join(clases)

# Agregamos el Fee al total del PNR
total=float(ttl)+float(fee)

totalblue = float(total) / float(blue)
totalmia = (float(fee) / float(blue)) + float(((ventausd)*.999)+5)

# Escribimos el resultado
texto =(f'{cabecera.get(cabe)}\n--------------------------------------------\nCotización Internacional iniciando vuelos en Argentina - NO ES RESERVA\n* Compañia \
 Emisora: {str(lineas.get(cia))}\n* Origen: {str(aeropuertos.get(orig))}\n\n* Despliegue de vuelos en horarios\
 locales\n{str(tramos)}\n\n* Ultimo día para emitir: {str(ltd)}\n* Equipaje \
 incluido: {str(franquicia.get(bagage))}\n**Total con impuestos PAGANDO EN PESOS ARS: {str(total)} por pasajero*\n* Cambios y Devoluciones: {str(devoluciones.get(ref))}\n* Cash o\
 tarjeta de crédito en 1 cuota solamente\n**Emitiendo en dólares físicos IMPECABLES cara \
 grande USD {str(int(totalmia))}* / Ahorras USD{str(int(totalblue)-int(totalmia))} emitiendo en Dólares*\n* Tomamos reserva solo con foto de DNI o \
 Pasaporte\n* Recomendamos llevar asistencia al viajero ver opciones aqui -> https://www.thconsultora.com.ar/shop \n {str(clases)}{str(int(fee/blue))}')

print(texto)
clip.copy(texto)
