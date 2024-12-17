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

