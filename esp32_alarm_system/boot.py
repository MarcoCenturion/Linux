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

