from kivy.app import App
from kivy.uix.boxlayout import BoxLayout
from kivy.properties import NumericProperty, StringProperty
from kivy.clock import Clock
from kivy.lang import Builder
import numpy as np
import sounddevice as sd

Builder.load_file('tuner.kv')  # Carga la interfaz desde archivo separado

class GuitarTuner(BoxLayout):
    frequency = NumericProperty(0)      # Frecuencia detectada en Hz
    note = StringProperty("--")         # Nota musical actual
    tuning_status = StringProperty("Ajuste: --")  # Estado de afinación
    cents_diff = NumericProperty(0)     # Diferencia en cents (-50 a +50)

    def __init__(self, **kwargs):
        super().__init__(**kwargs)
        self.sample_rate = 44100       # Tasa de muestreo estándar
        self.stream = None
        self.start_audio()

    def start_audio(self):
        """Inicia la captura de audio con manejo de errores"""
        try:
            self.stream = sd.InputStream(
                callback=self.audio_callback,
                channels=1,
                samplerate=self.sample_rate,
                blocksize=2048,        # Tamaño de buffer reducido para mejor respuesta
                dtype='float32'
            )
            self.stream.start()
        except Exception as e:
            self.tuning_status = f"Error micrófono: {str(e)}"

    def audio_callback(self, indata, frames, time, status):
        """Procesamiento de audio con FFT"""
        if status:
            print(f"Error en audio: {status}")
            return

        try:
            # Calculamos la frecuencia fundamental
            data = indata[:, 0]
            spectrum = np.fft.rfft(data)
            freqs = np.fft.rfftfreq(len(data), 1/self.sample_rate)
            peak_idx = np.argmax(np.abs(spectrum))
            detected_freq = float(freqs[peak_idx])

            # Actualizamos la UI en el hilo principal
            Clock.schedule_once(lambda dt: self.update_tuner(abs(detected_freq)))
        except Exception as e:
            print(f"Error en procesamiento: {e}")

    def update_tuner(self, freq):
        """Actualiza toda la interfaz de usuario"""
        try:
            # Validación básica de frecuencia
            if freq < 20 or freq > 1000:  # Rango audible para guitarra
                self.tuning_status = "Silencio..."
                return

            self.frequency = freq
            note, cents = self.frequency_to_note(freq)
            self.note = note
            
            # Limitamos el rango para mejor visualización
            self.cents_diff = max(-50, min(50, float(cents)))
            
            # Actualizamos el estado
            if abs(cents) < 5:
                self.tuning_status = "✅ Perfecto!"
            elif cents < 0:
                self.tuning_status = f"⬆ Sube {abs(cents):.1f} cents"
            else:
                self.tuning_status = f"⬇ Baja {abs(cents):.1f} cents"
                
        except Exception as e:
            self.tuning_status = f"Error: {str(e)}"

    def frequency_to_note(self, freq):
        """Convierte frecuencia a nota musical con protección contra errores"""
        notes = [
            ("E4", 329.63), ("B3", 246.94),
            ("G3", 196.00), ("D3", 146.83),
            ("A2", 110.00), ("E2", 82.41)
        ]
        
        try:
            # Encontramos la nota más cercana
            closest_note = min(notes, key=lambda x: abs(x[1] - freq))
            note_name, note_freq = closest_note
            
            # Calculamos cents evitando divisiones por cero
            if freq > 10 and note_freq > 0:
                cents = 1200 * np.log2(freq / note_freq)
            else:
                cents = 0
                
            return note_name, float(cents)  # Convertimos explícitamente
        except:
            return "--", 0.0

    def on_stop(self):
        """Limpieza al cerrar la aplicación"""
        if self.stream:
            self.stream.stop()
            self.stream.close()

class GuitarTunerApp(App):
    def build(self):
        return GuitarTuner()

if __name__ == "__main__":
    try:
        GuitarTunerApp().run()
    except Exception as e:
        print(f"Error crítico: {e}")
