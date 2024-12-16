
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

# Bot 

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

Main program

```
import machine
import urequests
import time

# Pines de las zonas
zona_1 = machine.Pin(25, machine.Pin.IN)
zona_2 = machine.Pin(26, machine.Pin.IN)
zona_3 = machine.Pin(27, machine.Pin.IN)

# Botón para activar/desactivar
boton = machine.Pin(0, machine.Pin.IN, machine.Pin.PULL_UP)

# Estado del sistema
sistema_activado = False

# Configuración del bot de Telegram
BOT_TOKEN = "TU_TOKEN_DEL_BOT"
CHAT_ID = "TU_CHAT_ID"

def enviar_mensaje(mensaje):
    url = f"https://api.telegram.org/bot{BOT_TOKEN}/sendMessage"
    data = {"chat_id": CHAT_ID, "text": mensaje}
    urequests.post(url, json=data)

def alarma_triggered(zona):
    if sistema_activado:
        enviar_mensaje(f"Alarma activada en zona {zona}")

# Interrupciones para las zonas
zona_1.irq(trigger=machine.Pin.IRQ_RISING, handler=lambda p: alarma_triggered(1))
zona_2.irq(trigger=machine.Pin.IRQ_RISING, handler=lambda p: alarma_triggered(2))
zona_3.irq(trigger=machine.Pin.IRQ_RISING, handler=lambda p: alarma_triggered(3))

# Bucle principal
while True:
    if not boton.value():  # Botón presionado
        sistema_activado = not sistema_activado
        estado = "activado" if sistema_activado else "desactivado"
        enviar_mensaje(f"Sistema {estado}")
        time.sleep(1)  # Evitar múltiples cambios por rebote

```

## Sitios de referencia

[Random Tutorials](https://randomnerdtutorials.com/esp32-microsd-card-arduino/)
[Esploradores en Español](https://www.esploradores.com/)
