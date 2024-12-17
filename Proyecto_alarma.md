
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

```

## Sitios de referencia

[Random Tutorials](https://randomnerdtutorials.com/esp32-microsd-card-arduino/)
[Esploradores en Español](https://www.esploradores.com/)
