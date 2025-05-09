from libqtile import bar, layout, qtile, widget, extension, hook
from libqtile.config import Click, Drag, Group, Key, Match, Screen
from libqtile.lazy import lazy
from libqtile.utils import guess_terminal
import os
import subprocess
from datetime import datetime

mod = "mod4"
terminal = "i3-sensible-terminal"  # Puedes cambiarlo por tu terminal preferida

def take_screenshot(qtile=None, area='screen'):
    """Toma capturas de pantalla con maim"""
    user = os.getenv('USER')
    timestamp = datetime.now().strftime('%Y-%m-%d_%H-%M-%S')
    screenshot_dir = f"/home/{user}/screenshot"
    os.makedirs(screenshot_dir, exist_ok=True)
    
    if area == 'screen':
        path = f"{screenshot_dir}/full_{timestamp}.jpg"
        subprocess.run(["maim", path])
    elif area == 'window':
        path = f"{screenshot_dir}/window_{timestamp}.jpg"
        subprocess.run(["maim", "-i", "$(xdotool getactivewindow)", path])
    else:  # selection
        path = f"{screenshot_dir}/selection_{timestamp}.jpg"
        subprocess.run(["maim", "-s", path])
    
    # Notificación opcional
    subprocess.run(["notify-send", "Captura guardada", path])

# ========== KEYBINDINGS ==========
keys = [
    # Movimiento entre ventanas (coincide con i3)
    Key([mod], "h", lazy.layout.left(), desc="Mover foco a la izquierda"),
    Key([mod], "j", lazy.layout.down(), desc="Mover foco abajo"),
    Key([mod], "k", lazy.layout.up(), desc="Mover foco arriba"),
    Key([mod], "l", lazy.layout.right(), desc="Mover foco a la derecha"),
    
    # Mover ventanas (como en i3)
    Key([mod, "shift"], "h", lazy.layout.shuffle_left(), desc="Mover ventana izquierda"),
    Key([mod, "shift"], "j", lazy.layout.shuffle_down(), desc="Mover ventana abajo"),
    Key([mod, "shift"], "k", lazy.layout.shuffle_up(), desc="Mover ventana arriba"),
    Key([mod, "shift"], "l", lazy.layout.shuffle_right(), desc="Mover ventana derecha"),
    
    # Redimensionar ventanas
    Key([mod, "control"], "h", lazy.layout.grow_left(), desc="Agrandar ventana izquierda"),
    Key([mod, "control"], "j", lazy.layout.grow_down(), desc="Agrandar ventana abajo"),
    Key([mod, "control"], "k", lazy.layout.grow_up(), desc="Agrandar ventana arriba"),
    Key([mod, "control"], "l", lazy.layout.grow_right(), desc="Agrandar ventana derecha"),
    Key([mod], "n", lazy.layout.normalize(), desc="Resetear tamaños"),
    
    # Atajos básicos
    Key([mod], "Return", lazy.spawn(terminal), desc="Abrir terminal"),
    Key([mod], "d", lazy.spawn("rofi -show run"), desc="Lanzador Rofi"),
    Key([mod, "shift"], "d", lazy.spawn("rofi -show"), desc="Lanzador Rofi alternativo"),
    Key([mod], "q", lazy.window.kill(), desc="Cerrar ventana"),
    Key([mod], "Tab", lazy.next_layout(), desc="Cambiar layout"),
    Key([mod], "f", lazy.window.toggle_fullscreen(), desc="Pantalla completa"),
    Key([mod], "t", lazy.window.toggle_floating(), desc="Ventana flotante"),
    Key([mod, "shift"], "e", lazy.shutdown(), desc="Apagar Qtile"),
    Key([mod, "control"], "r", lazy.reload_config(), desc="Recargar Qtile"),
    
    # Control de volumen (como en i3)
    Key([], "XF86AudioLowerVolume", lazy.spawn("pactl set-sink-volume @DEFAULT_SINK@ -5%")),
    Key([], "XF86AudioRaiseVolume", lazy.spawn("pactl set-sink-volume @DEFAULT_SINK@ +5%")),
    Key([], "XF86AudioMute", lazy.spawn("pactl set-sink-mute @DEFAULT_SINK@ toggle")),
   
    # Captura de pantalla completa
    Key([], "Print", lazy.function(lambda qtile: take_screenshot(area='screen'))),
    
    # Captura de ventana activa
    Key([mod], "Print", lazy.function(lambda qtile: take_screenshot(area='window'))),
    
    # Captura de área seleccionada
    Key([mod, "shift"], "Print", lazy.function(lambda qtile: take_screenshot(area='selection'))),

    # Atajos para aplicaciones (como en i3)
    Key([mod], "F1", lazy.spawn("firefox")),
    Key([mod], "F2", lazy.spawn("dolphin")),
    Key([mod], "F3", lazy.spawn("gimp")),
    Key([mod], "F4", lazy.spawn("kate")),
    Key([mod], "F5", lazy.spawn("chromium")),
    Key([mod], "F6", lazy.spawn("calibre")),
    Key([mod], "F7", lazy.spawn(terminal + " -e mocp")),
    Key([mod], "F8", lazy.spawn(terminal + " -e ranger")),
]

# Grupos/Workspaces (como en i3)
groups = [Group(i) for i in "123456"]

for i in groups:
    keys.extend([
        # Cambiar al grupo
        Key([mod], i.name, lazy.group[i.name].toscreen()),
        # Mover ventana al grupo y cambiar
        Key([mod, "shift"], i.name, lazy.window.togroup(i.name, switch_group=True)),
    ])

# ========== LAYOUTS ==========
layouts = [
    layout.MonadTall(
        border_focus='#5294e2',
        border_normal='#2c5380',
        border_width=2,
        margin=4,
        single_margin=4,
        change_ratio=0.05,
        min_ratio=0.30,
        max_ratio=0.70
    ),
    layout.Max(),
    layout.Floating(
        border_focus='#5294e2',
        border_normal='#2c5380',
        border_width=2
    )
]

# Reglas para ventanas flotantes (como en i3)
floating_layout = layout.Floating(
    border_focus='#5294e2',
    border_normal='#2c5380',
    border_width=2,
    float_rules=[
        *layout.Floating.default_float_rules,
        Match(wm_class='confirmreset'),
        Match(wm_class='makebranch'),
        Match(wm_class='maketag'),
        Match(wm_class='ssh-askpass'),
        Match(title='branchdialog'),
        Match(title='pinentry'),
        Match(wm_class='pavucontrol'),
        Match(wm_class='galculator'),
        Match(wm_class='lxappearance'),
        Match(wm_class='nitrogen'),
        Match(wm_class='qt5ct'),
        Match(wm_class='calamares'),
        Match(wm_class='xfce4-power-manager-settings'),
    ]
)

# ========== BARRA ==========
widget_defaults = dict(
    font='sans',
    fontsize=14,
    padding=3,
)
extension_defaults = widget_defaults.copy()

screens = [
    Screen(
        top=bar.Bar(
            [
                widget.CurrentLayout(),
                widget.GroupBox(
                    highlight_method='line',
                    this_current_screen_border='#5294e2',
                    active='#ffffff',
                    inactive='#666666'
                ),
                widget.Prompt(),
                widget.WindowName(),
                
                # Widget de Memoria mejorado
                widget.Memory(
                    format=' {MemUsed: .0f}{mm}/{MemTotal: .0f}{mm}',
                    foreground='#ffc800',
                    background='#333333',
                    padding=5,
                    measure_mem='G'
                ),
                
                # Widget de CPU mejorado
                widget.CPU(
                    format=' {load_percent}%',
                    foreground='#00c800',
                    background='#333333',
                    padding=5,
                    update_interval=1
                ),
                
                # Widget de Brillo
                widget.Backlight(
                    backlight_name='intel_backlight',
                    change_command='brightnessctl set {0}%',
                    format='☀ {percent:2.0%}',
                    foreground='#ffffff',
                    background='#444444',
                    padding=5 
                ),

                # Widget de Batería avanzado
                widget.Battery(
                    format='{char} {percent:2.0%} {hour:d}:{min:02d}',
                    foreground='#ff5555',
                    background='#333333',
                    padding=5,
                    charge_char='⚡',
                    discharge_char='🔋',
                    empty_char='⚠',
                    full_char='✓',
                    low_percentage=0.2,
                    show_short_text=False,
                    update_interval=10,
                    notify_below=15
                ),
                
                widget.Systray(),
                
                # Widget de Reloj mejorado
                widget.Clock(
                    format='%a - %d - %B - %Y | Semana %W | %H:%M %p',
                    foreground='#ffffff',
                    background='#222222',
                    padding=10
                ),
                
                widget.QuickExit(
                    default_text='[⏻]', 
                    countdown_format='[{}]',
                    foreground='#ff5555'
                ),
            ],
            24,
            background='#222222',
            opacity=0.9,
            margin=[5, 5, 0, 5]  # Margen: [top, right, bottom, left]
        ),
    ),
]

# ========== CONFIGURACIÓN GENERAL ==========
mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(), start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(), start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front()),
]

dgroups_key_binder = None
dgroups_app_rules = []
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False
auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True
auto_minimize = True
wl_input_rules = None

# Java apps fix
wmname = "LG3D"

# ========== AUTOSTART ==========
@hook.subscribe.startup_once
def autostart():
    home = os.path.expanduser('~')
    subprocess.Popen([home + '/.config/qtile/autostart.sh'])

