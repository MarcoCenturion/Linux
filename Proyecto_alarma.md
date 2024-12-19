
```
 __  __                        ____           _              _             
|  \/  | __ _ _ __ ___ ___    / ___|___ _ __ | |_ _   _ _ __(_) ___  _ __  
| |\/| |/ _` | '__/ __/ _ \  | |   / _ \ '_ \| __| | | | '__| |/ _ \| '_ \ 
| |  | | (_| | | | (_| (_) | | |__|  __/ | | | |_| |_| | |  | | (_) | | | |
|_|  |_|\__,_|_|  \___\___/   \____\___|_| |_|\__|\__,_|_|  |_|\___/|_| |_|

 __  __ _              ____          _        
|  \/  (_) ___ __ _   / ___|___  ___| |_ __ _ 
| |\/| | |/ __/ _` | | |   / _ \/ __| __/ _` |
| |  | | | (_| (_| | | |__| (_) \__ \ || (_| |
|_|  |_|_|\___\__,_|  \____\___/|___/\__\__,_|

```
[[Toc]]

# Descripción

Alarma hogareña de 3 zonas, activada por tablero, por un chatbot de telegram.  Con luces que se encienden al activarse, capturando imágenes con cámaras de video.

# Funcionamiento

El sistema se puede activar por zonas o de forma total, mediante un teclado numérico local o a través de un bot de telegram y un menú de acciones preconfigurado.

Si el sistema está en modo escucha y se detecta actividad en una de las zonas, se enciende una luz inmediatamente en esa zona, se espera un tiempo predeterminado y se chequea la actividad.  De confirmarse la actividad se dispara la alarma.

De confirmarse actividad en mas de una zona, se abren las cámaras y de dispara una llamada al boot de telegram.

Desde el boot se puede interactuar mediante un menu.

# Bot (a revisar) 
 
```
Elegir Opción

A- Activar toda la casa
B- Desactivar toda la casa
C- Activar Zona 1
D- Ver Zona 1
E- Ver Zona 2
F- Apagar cámaras
G- Encender Sirenas
H- Apagar Sirenas
```

# Plano

![Plano Casa](./images/plano_casa.jpeg =600x)

# Distribución pines esp32

![esp32](./images/pinesesp32.png =800x)

# Elementos

- Teclado numérico (existencia OK)
- Módulo display (existencia OK) SH1106 
- 3 sensores PIR (existencia 1) SR501
- 2 cámaras (existencia 1) OV7670
- 4 Rele (existencia 2)
- Módulo ESP32 (existencia ok)
- Batería 12V 7A (existencia OK)
- Circuito alimentación (existencia OK)
- Sirena Externa (existencia OK)
- Sirena Interna (existencia OK)
- Cable tensión 2x1 40 mts
- Cable datos RJ45
- Bornera eléctrica 
- 4 Portalámparas + dicroicas led
- Caja DIY
- Lectora escritora de tarjeta ssd, para guardar imágenes.  spi.
- Snsor de humo para incendios.  Monoxido de carbono. MQ5

# Circuito

Un circuito de tensión domiciliaria alimenta una batería de 12 V, que a su vez alimenta los circuitos y sensores.

# Presupuesto Mercadolibre

![Plano Casa](./images/presupuesto.jpg =600x)

# Soft

Micropython para toda la lógica del booteo, comunicación vía wifi con, lectura de los módulos PIR y activación de los relays, controlando el modulo esp32 alimentado con un transformador 220 CC a 12 V CA, que alimenta una fuente estabilizada que entrega un circuito de 5 V y otro de 3,5 V

## Estructura de archivos

```
/esp32_alarm_system
    |-- boot.py
    |-- settings.py
    |-- web.html
    |-- main.py
```

settings.py
```
# Configuración WiFi
WIFI_SSID = 'Fibertel WiFi m55 2.4GHz'
WIFI_PASSWORD = 'XHsUxXjxUU'

# Configuración de Telegram
TOKEN = '8098764738:AAHJA9CswhpXDKmnpSiKmFctsyddYbk3vjk'
CHATID = 'alares32bot'
```

boot.py
```
from settings import WIFI_SSID, WIFI_PASSWORD
import network
import time

def conectar_wifi():
    wlan = network.WLAN(network.STA_IF)
    wlan.active(True)
    wlan.connect(WIFI_SSID, WIFI_PASSWORD)
    
    print("Conectando a WiFi...")
    for _ in range(20):  # Intentar conectar por 20 segundos
        if wlan.isconnected():
            print("Conexión WiFi establecida.")
            print("Dirección IP:", wlan.ifconfig()[0])
            return
        time.sleep(1)
    print("No se pudo conectar a WiFi.")
    return wlan

wlan = conectar_wifi()

```

web.html
```
<!DOCTYPE html>
<html>
<head>
    <title>Estado de Alarmas</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light text-center">
    <div class="container py-5">
        <h1 class="mb-4">Estado de la Alarma</h1>
        <div class="row">
            <div class="col-md-3" id="sensor1">
                <h2>Zona 1</h2>
                <p class="status text-danger">Inactivo</p>
            </div>
            <div class="col-md-3" id="sensor2">
                <h2>Zona 2</h2>
                <p class="status text-danger">Inactivo</p>
            </div>
            <div class="col-md-3" id="sensor3">
                <h2>Zona 3</h2>
                <p class="status text-danger">Inactivo</p>
            </div>
            <div class="col-md-3" id="sensor4">
                <h2>Zona 4</h2>
                <p class="status text-danger">Inactivo</p>
            </div>
        </div>
    </div>
</body>
</html>

```

main.py
```
from machine import Pin
import time
import urequests
from settings import TOKEN, CHATID

# Configuración de los sensores PIR
pir1 = Pin(25, Pin.IN)
pir2 = Pin(26, Pin.IN)
pir3 = Pin(27, Pin.IN)
pir4 = Pin(14, Pin.IN)

# Estados iniciales de los sensores
estado_anterior = {"pir1": 0, "pir2": 0, "pir3": 0, "pir4": 0}

# Función para enviar mensaje a Telegram
def enviar_mensaje_telegram(mensaje):
    try:
        data = {'chat_id': CHATID, 'text': mensaje}
        response = urequests.post("https://api.telegram.org/bot" + TOKEN + "/sendMessage", json=data)
        if response.status_code == 200:
            print("Mensaje enviado a Telegram:", mensaje)
        else:
            print("Error al enviar mensaje a Telegram:", response.status_code)
        response.close()
    except Exception as e:
        print("Error al enviar mensaje a Telegram:", e)

# Función para verificar el estado de los sensores PIR
def verificar_sensores():
    global estado_anterior

    # Leer estados actuales de los sensores
    estados_actuales = {
        "pir1": pir1.value(),
        "pir2": pir2.value(),
        "pir3": pir3.value(),
        "pir4": pir4.value(),
    }

    # Compara estados actuales con los anteriores
    for sensor, estado_actual in estados_actuales.items():
        if estado_actual == 1 and estado_anterior[sensor] == 0:
            # Se detecta actividad en el sensor
            mensaje = f"Movimiento detectado en {sensor.upper()}."
            enviar_mensaje_telegram(mensaje)
            print(mensaje)

    # Actualiza los estados anteriores
    estado_anterior = estados_actuales

# Loop principal
while True:
    verificar_sensores()
    time.sleep(1)  # Verifica los sensores cada segundo
```

# Sitios de referencia

[Random Tutorials](https://randomnerdtutorials.com/esp32-microsd-card-arduino/)

[Usando Relays](https://randomnerdtutorials.com/esp8266-relay-module-ac-web-server/)

[Esploradores en Español](https://www.esploradores.com/)

[Manejo Sensores DHT11 DHT22](https://microcontrollerslab.com/micropython-dht11-dht22-web-server-esp32-esp8266/)

[Sensores DHT22](https://gndtovcc.home.blog/2020/04/16/micropython-esp32-esp8266-with-dht11-dht22-web-server/)

# Funcionamiento

Sistema de Alarma: 
Se monitorean las 3 zonas con sensores PIR. 
Cuando un sensor detecta movimiento, se activa el relé correspondiente y la alarma.

Explicación del Código

Estado del Sistema:
Un LED (GPIO2) muestra si el sistema está activo o desactivado.
Otro LED (GPIO15) indica que una alarma está en curso.

LEDs:
led_ready: Indica que el sistema está listo.
led_alarm: Se puede expandir para mostrar una alarma activa.

Teclado Numérico:
Lee el teclado 4x4 mediante 4 filas y 4 columnas.
Cada tecla se identifica en la matriz KEYS.

Código de Armado:
Si el código ingresado coincide con SYSTEM_CODE, se solicita armar:
A: Todo el sistema.
B: Zona 1.
C: Zona 2.
D: Zona 3.

Desactivación del Sistema:
Presionando la tecla * se desarma todo el sistema.

Monitoreo de Sensores:
Los sensores PIR activan los relés correspondientes cuando la zona está armada.

Resumen de Funcionalidades
Interfaz Web:
La página muestra de forma estética el estado de las zonas.
Se utiliza Bootstrap para el diseño.

WiFi:
La configuración de WiFi está separada en settings.py e importada por boot.py.

Lógica Modular:
Cada parte del sistema está organizada en archivos independientes.

Temporizador de 20 segundos: 
La función countdown_to_alarm() espera 20 segundos después de detectar movimiento. Si no se desarma, activa la sirena.

Relé de luz de alerta: Se enciende inmediatamente al detectar movimiento en una zona armada.

Relé de sirena: Se activa si el sistema no se desarma en 20 segundos.

Tecla ASTERISCO: Permite desarmar el sistema en cualquier momento ingresando el código correcto.

Secuencia de Funcionamiento

El sistema se arma ingresando el código correcto.

Al detectar movimiento en una zona armada:
Se enciende la luz de alerta.
Inicia el temporizador de 20 segundos.
Durante esos 20 segundos:

El usuario puede desarmar el sistema ingresando el código correcto.
Si el temporizador expira sin desarmar:
Se activa la sirena.

# Manejo ESP32

Borrar flash 

```
esptool.py --chip esp32 --port /dev/ttyUSB0 erase_flash
```

Copiar Firmware al modulo

```
esptool.py --chip esp32 --port /dev/ttyUSB0 --baud 460800 write_flash -z 0x1000 ESP32_GENERIC-SPIRAM-20240602-v1.23.0.bin --force
```


