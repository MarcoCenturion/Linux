
tst = '''
01 P1
SELECTED RECOMMENDATION SUCCESSFULLY BOOKED
LAST TKT DTE 05AUG24 - SEE SALES RSTNS
-----------------------<CORP 510954>------------------------
     AL FLGT  BK T DATE  TIME  FARE BASIS      NVB  NVA   BG
 COR
 RIO G3  7613 N  N 22AUG 0400  NNACBG2GOP      22AUG22AUG 0P
 COR G3  7612 B  B 28AUG 2230  BNFCAG2GOP      28AUG28AUG 0P

USD   247.00      22AUG24COR G3 RIO M/IT G3 COR M/IT END
ARS235515.00
ARS 16486.10AR    XT ARS 70654.50Q1 ARS 9535.00QO ARS
ARS 70654.50O5    1334.90S7 ARS 7628.00TQ ARS 54349.50XR ARS
ARS152951.10XT    9449.20BR
ARS475606.70
RATE USED 1USD=953.50ARS
FARE FAMILIES:    (ENTER FQFn FOR DETAILS, FXY FOR UPSELL)
FARE FAMILY:FC1:1:LT
FARE FAMILY:FC2:2:LT
>                                                 PAGE  1/ 2
>
m
NO BAG INCLUDED FOR AT LEAST ONE FLIGHT
CAT35 NEGOTIATED FARES
TICKET STOCK RESTRICTION
BG CXR: G3/G3
PRICED WITH VALIDATING CARRIER G3 - REPRICE IF DIFFERENT VC
NON-REFUNDABLE
NONEND/NONTRANS/
>                                                 PAGE  2/ 2
>
rt
RP/CORG121MP/
  1  G37613 N 22AUG 4 CORGIG DK1  0400 0705  22AUG  E  0 738 M
     010 AA 7695 /AR 7742 /KL 9383
     SEE RTSVC
  2  G37612 B 28AUG 3 GIGCOR DK1  2230 0220  29AUG  E  0 738 M
     010 AA 7727 /AR 7743
     SEE RTSVC
>
'''

print(tst)

"""# Script para cotizar aéreos
## TIPS

- Remarcar la diferencia con Despegar
- Abonando en USD tiene descuento
- Foto de Pasaportes y visa (no tomamos reservas sin esto)
- Equipaje en cabina y en bodega
- Remarcar LTD (ultimo momento para emitir)
- Seguro de Asistencia
- Auto


"""


# Diccionarios a utilizar

aeropuertos = {
    "ADD": "Addis Ababa, Ethiopia",
    "ADZ": "San Andrés",
    "AEP": "Aeroparque, Buenos Aires",
    "AGP": "Malaga",
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
    "CHC": "Christchurch, New Zeland",
    "CJC": "Calama, Chile",
    "COR": "Córdoba",
    "CPC": "San Martín de los Andes",
    "CTG": "Cartagena de Indias",
    "CUN": "Cancún",
    "CUR": "Curazao, Antillas Holandesas",
    "CUZ": "Cuzco",
    "DXB": "Dubai",
    "EWR": "Newark New York",
    "EZE": "Ezeiza, Buenos Aires",
    "FCO": "Fiumicino, Roma",
    "FLN": "Florianópolis",
    "FRA": "Frankfurt",
    "FTE": "El Calafate",
    "GIG": "El Galeao, Rìo de Janeiro",
    "GLA": "Glasgow, Escocia",
    "GRU": "Guarulhos, Sao Paulo",
    "GUA": "Ciudad de Guatemala, Guatemala",
    "GYE": "Guayaquil, Ecuador",
    "HAV": "La Habana, Cuba",
    "HOU": "Houston, Texas",
    "IAH": "Houston, Texas, USA",
    "IGR": "Puerto Iguazú, Argentina",
    "IGU": "Foz do Iguazu, BR",
    "IQQ": "Iquique, Chile",
    "IST": "Istambul, Turkey",
    "JFK": "John F. Kennedy, New York",
    "JUJ": "Jujuy",
    "LAP": "La Paz, Mexico",
    "LAS": "Las Vegas",
    "LAX": "Los Angeles, California",
    "LCA": "Larnaca, Cyprus",
    "LGA": "La Guardia New York",
    "LGW": "London",
    "LHR": "Heathrow, London",
    "LIM": "Lima, Perú",
    "LIS": "Lisboa",
    "MAD": "Madrid",
    "MCO": "Orlando, Florida, US",
    "MDZ": "Mendoza",
    "MDQ": "Mar del Plata",
    "MEC": "Manta, Ecuador",
    "MEL": "Melbourne, Australia",
    "MEX": "México DF",
    "MIA": "Miami, USA",
    "MIL": "Milano",
    "MUC": "Munich",
    "MXP": "Malpensa, Milano",
    "NAP": "Napoles, Italy",
    "NLU": "Felipe Angeles, Mexico DF",
    "NWR": "Newark Liberty Intl, Nyc USA",
    "OPO": "Oporto, Portugal",
    "ORD": "Chicago, USA",
    "ORY": "Orly, París",
    "PHL": "Philadelphia, USA",
    "POA": "Porto Allegre",
    "PMI": "Palma de Mallorca, Islas Baleares, España",
    "PSS": "Posadas, Misiones",
    "PTY": "Panamá",
    "ROS": "Rosario",
    "PUJ": "Punta Cana",
    "RDD": "Readding, California",
    "RES": "Resistencia, Chaco",
    "SAL": "San Salvador, El Salvador",
    "SCL": "Santiago de Chile",
    "SDQ": "Santo Domingo, Repùblica Dominicana",
    "SDU": "Santos Dumont Rio de Janeiro",
    "SFO": "San Francisco, California",
    "SJD": "Los Cabos, Mexico",
    "SJO": "San José, Costa Rica",
    "SLA": "Salta",
    "SMR": "Santa Marta, Colombia",
    "SPU": "Split, Croacia",
    "SSA": "Salvador, Bahia",
    "STR": "Stutgart",
    "SVQ": "Sevilla",
    "SYD": "Sydney",
    "TIJ": "Tijuana, Mexico",
    "TLV": "Tel Aviv, Israel",
    "TQO": "Tulum, México",
    "UIO": "Quito, Ecuador",
    "USH": "Ushuaia",
    "VLC": "Valencia, España",
    "VVI": "Santa Cruz de la Sierra, Bolivia",
    "XOC": "Atocha Rail ST, Madrid",
    "YTO": "Toronto, Canadá",
    "YYZ": "Toronto, Canadá",
    "YJB": "Sants Rail Station, Barcelona"
}

lineas = {
    "AC": "Air Canada",
    "AR": "Aerolíneas Argentinas",
    "AV": "AVIANCA",
    "AZ": "Ita",
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
    "NON-REF":"No permite devoluciones ni cambios",
    "NON-END":"No permite devoluciones ni cambios",
    "ENDOS":"No permite devoluciones ni cambios",
    "NONREF":"No permite devoluciones ni cambios",
    "NONEND":"No permite devoluciones ni cambios"
}

financiacion = {
    "AR": "https://www.aerolineas.com.ar/es-ar/reservasservicios/bancos",
    "WJ":"https://jetsmart.com/ar/es/minisitios/medios-de-pago"
}

cabecera = {
    "th": "\n*TURISMO Y HOTELERÍA CONSULTORA* https://www.thconsultora.com.ar\n email: marco@thconsultora.com.ar | Tel/Wp: +543513070654",
    "gr": "\n*GRIFFIN VIAJES* | Leg. 10659 | San Jeronimo 167 Local 16 Gal. Saint Michell\nwww.griffinviajes.com.ar | email: aulavirtualturismo.com.ar |\
 cel/Wp: +543513070654 | Tel: +543514245547 ",
    "pa":"\n*Pampero Viajes y Turismo | EVT Leg 18042* | \nAviador Richardson 2150 1ºA - Córdoba | Tel: 3515190438 | Mail: pamperoviajesyturismo@gmail.com",
    "ni":"\n*TRIBU TRAVEL TOUR* | Leg. 18163 \nhttps://tribu-travel-tour.misitiosimple.com/\nAvellaneda 534 Alta Gracia | Tel/Wp:3513019736",
    "ja":"\n*Jazz Operador* | Andrés Piñero 7774, Argüello, Córdoba CP 5021. ARGENTINA\n https://www.jazzoperador.tur.ar/ tecno@jazzoperador.com.ar | Tel/WP: +543513070654 ",
    "pi":"\n*Turismo General Pico SRL*\n106 nº 823, General Pico, La Pampa -AR- | Tel:02302 432900 email: consultas@turispico.com.ar |\n web: https://www.turispico.com.ar"
}

i65promo = {1:"16.83",
2:"16.83",
3:"16.83",
4:"22.44",
5:"28.05",
6:"33.66",
7:"39.27",
8:"44.88",
9:"50.49",
10:"56.10",
11:"61.71",
12:"67.32",
13:"72.93",
14:"78.54",
15:"84.15",
16:"86.76",
17:"95.37",
18:"100.98",
19:"106.59",
20:"112.20",
21:"117.81",
22:"123.42",
23:"129.03",
24:"134.64",
25:"140.25",
26:"145.86",
27:"151.47",
28:"157.08",
29:"162.69",
30:"168.30",
31:"173.91",
32:"179.52",
33:"185.15",
34:"190.74",
35:"196.35",
36:"201.96",
37:"207.57",
38:"213.18",
39:"218.79",
40:"224.40",
41:"230.01",
42:"235.62",
43:"241.23",
44:"246.84",
45:"252.45",
46:"258.06",
47:"263.67",
48:"269.28",
49:"274.89",
50:"280.50",
51:"286.11",
52:"291.72",
53:"297.33",
54:"302.94",
55:"308.55",
56:"314.16",
57:"319.77",
58:"325.38",
59:"330.99",
60:"336.60",
61:"342.21",
62:"347.82",
63:"353.43",
64:"359.04",
65:"364.65",
66:"370.26",
67:"375.87",
68:"381.48",
69:"387.09",
70:"392.70",
71:"398.31",
72:"403.92",
73:"409.53",
74:"415.14",
75:"420.75",
76:"426.36",
77:"431.91",
78:"437.58",
79:"443.19",
80:"448.80",
81:"454.41",
82:"460.02",
83:"465.63",
84:"471.24",
85:"476.85",
86:"482.46",
87:"488.07",
88:"493.68",
89:"499.29",
90:"504.90"
}

i85promo = {1:"29.34",
2:"29.34",
3:"29.34",
4:"39.12",
5:"48.90",
6:"57.13",
7:"65.33",
8:"73.53",
9:"81.73",
10:"81.99",
11:"88.97",
12:"95.95",
13:"102.93",
14:"109.91",
15:"116.90",
16:"111.74",
17:"118.33",
18:"124.91",
19:"131.50",
20:"137.86",
21:"144.68",
22:"144.80",
23:"150.76",
24:"156.71",
25:"162.66",
26:"168.61",
27:"174.57",
28:"180.51",
29:"186.47",
30:"178.53",
31:"183.82",
32:"189.11",
33:"194.40",
34:"199.69",
35:"204.98",
36:"210.27",
37:"215.56",
38:"220.85",
39:"226.14",
40:"231.43",
41:"236.72",
42:"242.01",
43:"247.30",
44:"252.59",
45:"238.05",
46:"242.73",
47:"247.41",
48:"252.09",
49:"256.77",
50:"261.45",
51:"270.10",
52:"270.81",
53:"275.49",
54:"280.17",
55:"284.86",
56:"289.54",
57:"294.22",
58:"298.90",
59:"303.58",
60:"303.58",
61:"285.37",
62:"289.73",
63:"294.07",
64:"298.42",
65:"302.78",
66:"307.13",
67:"335.28",
68:"315.83",
69:"320.18",
70:"324.54",
71:"328.88",
72:"333.23",
73:"337.59",
74:"341.94",
75:"346.28",
76:"350.64",
77:"354.99",
78:"359.34",
79:"363.69",
80:"368.04",
81:"371.94",
82:"376.75",
83:"381.09",
84:"385.44",
85:"389.80",
86:"394.15",
87:"398.49",
88:"402.85",
89:"407.20",
90:"391.12"
}

mes ={
    "JAN":1,
    "FEB":2,
    "MAR":3,
    "APR":4,
    "MAY":5,
    "JUN":6,
    "JUL":7,
    "AUG":8,
    "SEP":9,
    "OCT":10,
    "NOV":11,
    "DEC":12
}

fee_camuflado = {
    0:"M",
    1:"U",
    2:"R",
    3:"C",
    4:"I",
    5:"E",
    6:"L",
    7:"A",
    8:"G",
    9:"O"
}

# Captura datos
# Importamos la librería RE, definimos un fee por defecto
# y preguntamos al usuario si quiere cambiarlo
import re
import datetime

fee = 0
blue = 0
cabe = input("\n---------------------------------------\nDefinir Cabecera th, ni, gr, pa: ")
cabe = cabe.lower()
fee = int(input("\n-------------------------------------\nDefinir fee en ARS oficial\nPor defecto es ARS46000: "))
blue = int(input("\n-------------------------------------\nIndicar el tipo de cambio blue Vendedor: "))
ventausd = int(input("\n----------------------------------\nIndicar el precio en USD emitiendo en MIA: "))

"""
## Cotizacion Internacional INICIADOS EN ARGENTINA
### Versión Criptico


---"""

# Desmenuzamos el archivo buscando los campos puntuales con expresiones regulares

pos_carrier=tst.find('CARRIER')
cia=tst[(pos_carrier+8):(pos_carrier+10)]
cambio=re.findall('1USD=(......)', tst)[0]
route = re.findall(r'^\s{2}\d{1}\s{2}\w{2}.{53}',tst, flags=re.M)
orig = re.findall('\n (\w{3})\n', tst)[0]
fare_ars = re.findall('\nARS(\D{0,3}\d{1,6}.\d{2})', tst)[0][1]
bagage = re.findall(' (0P|20|30|32|2B|PC|1P|2P|3P)\n', tst)[0]
ltd = re.findall('(DTE \d{2}\D{3}\d{2}/\d{2}:\d{2}|DTE \d{2}\D{3}\d{2})', tst)[0]
date = re.findall(r'(?:[ |*][A-Z]{1}.)((?:\d{2}\D{3} ))', tst)
ttl = re.findall('\n(ARS|AR|ARS )(\d{1,7}.\d{2})', tst)[-1][-1]
ref = re.findall('\n(ENDOS|NONREF|NON-REF|NON|TICKETS)', tst)[0]
retenc = re.findall('(\d{0,6}.\d{2})(Q1 |-Q1 )', tst)[0][0]
#fare_usd = re.findall('USD(\D{0,6}\d{1,6}.\d{2}) ', tst)[0]

# Los tramos los tomamos del frente del PNR y los recortamos para obtener solo la info relevante
tramo=[]
clases=[]
fechas=[]
contador = len(route)

for renglon in route:
    vuelo = renglon[5:12]
    clase = renglon[12:13]
    fecha = renglon[14:20]
    horarios = renglon[34:44]
    ori = renglon[22:25]
    des = renglon[25:28]
    tramo.append(vuelo+fecha+horarios+aeropuertos.get(ori) + " / " + aeropuertos.get(des))
    fechas.append(fecha)
    clases.append(clase)
    contador = contador-1


# Juntamos toda la info de los tramos
tramos="\n".join(tramo)
clases="".join(clases)

# Agregamos el Fee al total del PNR
total=float(ttl)+float(fee)

ultima=fechas[-1]
primera=fechas[0]

dia_primera = primera[0:2]
mes_primera = primera[2:5]

dia_ultima = ultima[0:2]
mes_ultima = ultima[2:5]

year='-2024 00:00'
inicio = dia_primera+'-'+mes_primera+year
fin = dia_ultima+'-'+mes_ultima+year

dia1 = datetime.datetime.strptime(inicio,'%d-%b-%Y %H:%M')
dia2 = datetime.datetime.strptime(fin,'%d-%b-%Y %H:%M')

dias = (dia2 - dia1) / datetime.timedelta(days=1)

##  Comentar este renglon si no hay cambio de año
#if dias -0:dias=dias+366

##

usd_i65 = i65promo.get(dias)
usd_i85 = i85promo.get(dias)
'''
camuflado = []
largo = len(fee)
for i in fee:
  camuf=fee_camuflado.get(int(i))
  largo = largo+1
  camuflado.append(camuf)
'''
# Escribimos el resultado
texto =(f'{cabecera.get(cabe)}\n--------------------------------------------\nCotización Internacional iniciando vuelos en Argentina \
- NO ES RESERVA\n* Compañia Emisora: {str(lineas.get(cia))}\n* Origen: {str(aeropuertos.get(orig))}\n\n* Despliegue de vuelos en horarios \
 locales\n{str(tramos)}\n\n* Ultimo día para emitir: {str(ltd)}\n* Equipaje \
 incluido: {str(franquicia.get(bagage))}\n* Total con impuestos abonando en pesos argentinos *ARS{str(int(total))}* por pasajero \
 \n* Total con impuestos abonando en billetes dólares estadounidenses CARA GRANDE\n en perfecto estado *USD{str(ventausd+(int(fee/blue)))}* \
 Ahorras USD{str(int(ventausd+(int(fee/blue))-(int(total)/blue)))} \
 \n* Abonando en Pesos solamente importe a recuperar AFIP ARS{str(int(float(retenc)))} \n* Cambios y Devoluciones: {str(devoluciones.get(ref))}\n* Cash o\
 tarjeta de crédito en 1 cuota solamente \n*\n*Recomendamos contratar asistencia al viajero para los {str(int(dias))}\
 días de viaje\n* Cobertura básica i65 ARS{int(float(cambio)*float(usd_i65))}\
 con estas prestarcionaes https://bit.ly/4aUnX3s\n* O la cobertura mayor i85 ARS{int(float(cambio)*float(usd_i85))} con estas \
 prestaciones https://bit.ly/4aSwNPw\n AM-{str(clases)}-{str(int(fee/blue))}\
 \n* Financiación para Cabotaje {str(str(financiacion.get(cia)))}')

print(texto)

