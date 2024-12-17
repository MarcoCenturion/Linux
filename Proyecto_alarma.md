
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
C- Activar zona Garage y Comedor
D- Ver Cámara Comedor
E- Ver Cámara Garage
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
# settings.py

WIFI_SSID = "Fibertel WiFi m55 2.4GHz"
WIFI_PASSWORD = "XHsUxXjxUU"
```

boot.py
```
import network
from settings import WIFI_SSID, WIFI_PASSWORD

def connect_wifi():
    wlan = network.WLAN(network.STA_IF)
    wlan.active(True)
    wlan.connect(WIFI_SSID, WIFI_PASSWORD)

    print("Conectando a WiFi...")
    while not wlan.isconnected():
        pass

    print("Conexión establecida:")
    print(wlan.ifconfig())

connect_wifi()
```

web.html
```
<!DOCTYPE html>
<html>
<head>
    <title>Panel de Alarma</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .sensor { font-size: 1.2rem; margin: 10px 0; }
        .activo { color: green; font-weight: bold; }
        .inactivo { color: red; }
    </style>
</head>
<body class="text-center">
    <div class="container mt-5">
        <h1 class="mb-4">Sistema de Alarma</h1>
        <div class="sensor">Zona 1: <span id="zona1" class="inactivo">Inactiva</span></div>
        <div class="sensor">Zona 2: <span id="zona2" class="inactivo">Inactiva</span></div>
        <div class="sensor">Zona 3: <span id="zona3" class="inactivo">Inactiva</span></div>
        <hr>
        <p id="status" class="mt-3">Estado del sistema: <strong>Desactivado</strong></p>
    </div>
</body>
</html>

```

main.py
```
import machine
from machine import Pin
import time

# Configuración del teclado 4x4
ROWS = [Pin(18, Pin.OUT), Pin(19, Pin.OUT), Pin(21, Pin.OUT), Pin(22, Pin.OUT)]
COLS = [Pin(23, Pin.IN, Pin.PULL_DOWN), Pin(5, Pin.IN, Pin.PULL_DOWN), Pin(17, Pin.IN, Pin.PULL_DOWN), Pin(16, Pin.IN, Pin.PULL_DOWN)]
KEYS = [
    ['1', '2', '3', 'A'],
    ['4', '5', '6', 'B'],
    ['7', '8', '9', 'C'],
    ['*', '0', '#', 'D']
]

# Sensores PIR y relés
zona1 = Pin(25, Pin.IN)  # PIR Zona 1
zona2 = Pin(26, Pin.IN)  # PIR Zona 2
zona3 = Pin(27, Pin.IN)  # PIR Zona 3

relay_luz_zona = Pin(32, Pin.OUT)  # Relé para luz de alerta
relay_sirena = Pin(33, Pin.OUT)    # Relé para la sirena

# LEDs de estado
led_ready = Pin(2, Pin.OUT)  # LED Sistema Listo

# Código de armado
SYSTEM_CODE = "1234"
input_code = ""

# Variables del sistema
zones_active = {"zona1": False, "zona2": False, "zona3": False}
system_armed = False
alarm_triggered = False

# Función para leer el teclado
def read_keypad():
    for i, row in enumerate(ROWS):
        row.on()
        for j, col in enumerate(COLS):
            if col.value() == 1:
                time.sleep(0.2)  # Debounce
                row.off()
                return KEYS[i][j]
        row.off()
    return None

# Función para validar código
def validate_code():
    global input_code, system_armed, zones_active, alarm_triggered
    if input_code == SYSTEM_CODE:
        print("Sistema desarmado correctamente.")
        system_armed = False
        zones_active = {"zona1": False, "zona2": False, "zona3": False}
        relay_luz_zona.value(0)  # Apagar luz
        relay_sirena.value(0)    # Apagar sirena
        alarm_triggered = False
        led_ready.value(0)       # Apagar LED de sistema listo
    else:
        print("Código incorrecto.")
    input_code = ""

# Temporizador para desarmado
def countdown_to_alarm(zone_name):
    global alarm_triggered
    print(f"Movimiento detectado en {zone_name}. Tienes 20 segundos para desarmar el sistema.")
    relay_luz_zona.value(1)  # Encender luz de alerta
    start_time = time.time()
    while time.time() - start_time < 20:  # Esperar 20 segundos
        key = read_keypad()
        if key:
            if key.isdigit():
                global input_code
                input_code += key
                print("*", end="")  # Mostrar asterisco
                if len(input_code) == 4:
                    validate_code()
                    if not system_armed:
                        return  # Salir si el sistema se desarma
    # Si no se desarma, activar sirena
    print("Tiempo agotado. Activando sirena.")
    alarm_triggered = True
    relay_sirena.value(1)  # Activar sirena

# Monitoreo de zonas
def monitor_zones():
    if system_armed:
        if zones_active["zona1"] and zona1.value():
            countdown_to_alarm("Zona 1")
        if zones_active["zona2"] and zona2.value():
            countdown_to_alarm("Zona 2")
        if zones_active["zona3"] and zona3.value():
            countdown_to_alarm("Zona 3")

# Bucle principal
print("Sistema iniciado. Ingresa el código para armar:")
while True:
    key = read_keypad()
    if key:
        if key.isdigit():
            input_code += key
            print("*", end="")  # Mostrar asteriscos
            if len(input_code) == 4:
                if input_code == SYSTEM_CODE:
                    system_armed = True
                    zones_active.update({"zona1": True, "zona2": True, "zona3": True})
                    led_ready.value(1)
                    print("\nSistema armado. Zonas activas: 1, 2, 3.")
                else:
                    print("\nCódigo incorrecto.")
                input_code = ""
        elif key == "*":  # Desarmar sistema
            validate_code()
    if system_armed and not alarm_triggered:
        monitor_zones()

```

# Sitios de referencia

[Random Tutorials](https://randomnerdtutorials.com/esp32-microsd-card-arduino/)

[Esploradores en Español](https://www.esploradores.com/)


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
