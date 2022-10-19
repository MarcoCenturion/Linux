
@startuml
box "Entorno Habitual" #EEEBDC
note over Turista : $1200 gasto diario
participant Turista 
note over Excursionista : $350 gasto 
participant Excursionista
end box
participant DestinoTurístico

Turista -> DestinoTurístico : Gasto superior
Excursionista ->  DestinoTurístico : Gasto inferior

note right
Gasto de los visitantes $61.611.850
endnote

DestinoTurístico -> DestinoTurístico : Circulación del capital
DestinoTurístico -> DestinoTurístico : Reinversión

== Puestos de Trabajo ==

DestinoTurístico -> DestinoTurístico : Gasto de usuarios locales en el destino
note right
Empleo Directo 538
Puestos Temporales 43
Sector Público 52 empleos
endnote
== Efecto Multiplicador del Turismo ==
DestinoTurístico -> DestinoTurístico : Reinversión capital
note over DestinoTurístico : Mejora contínua 
@enduml
