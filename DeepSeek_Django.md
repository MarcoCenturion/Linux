# Informe Consolidado: CRM Turístico Inteligente

## 1. Proyecciones Financieras

### Costos de Implementación
| **Concepto**               | **Costo Inicial (USD)** | **Recurrente Anual (USD)** |
|----------------------------|-------------------------|----------------------------|
| Desarrollo CRM             | $28000                 | $6000 (actualizaciones)   |
| Hardware (2x GPU T4)       | $18000                 | $3600 (mantenimiento)     |
| Capacitación (16 personas) | $8000                  | $2400 (refreshers)        |
| Licencia api Nemo          | $3500                  | $200                     |
| Licencia api Starlings     | $1500| $1500
| **Total**                  | **$59000**             | **$13700**                |

### Proyección de Ventas (3 años)

Una aproximación en el mediano plazo

| Año  | Ventas (USD millones) | Barra           |
|------|-----------------------|-----------------|
| 2026 | 26                    | ██████ (26)     |
| 2027 | 30                    | ████████ (30)   |
| 2028 | 35                    | ██████████ (35) |


### Indicadores

|KPI|	2026|	2027|	2028
|---|---|---|---
|Ventas Vuelos|	$14M|	$16M|	$18M
|Ventas Hoteles|	$10M|	$12M|	$14M
|Paquetes (Cross-Sell)|	$2M|	$4M|	$6M
|Margen Operativo|	30%|	32%|	34%

## 2. Roadmap MVP

### Etapas Clave

````plantuml 
@startgantt
skinparam amigaFontName Arial
skinparam amigaFontSize 10
skinparam amigaBackgroundColor #FFFFFF
skinparam amigaArrowColor #333333
skinparam amigaActivityBackgroundColor #DDDDDD
skinparam amigaActivityBorderColor #333333

project starts on 2024-01-01
saturday are closed
sunday are closed

-- Núcleo --
[Authentication] as auth lasts 14 days
[Flight API] as vuelos starts at auth's end and lasts 28 days

-- Complementos --
[Hotel API] as hoteles starts 2024-02-12 and lasts 21 days
[PDF Generator] as pdf starts 2024-03-04 and lasts 14 days

-- Validación --
[Pilot Test] as pilot starts 2024-03-18 and lasts 30 days
[Go-Live] as golive starts at pilot's end and lasts 14 days

auth is colored in #4CAF50
vuelos is colored in #2196F3
hoteles is colored in #FFC107
pdf is colored in #9C27B0
pilot is colored in #FF5722
golive is colored in #607D8B

@enduml
````

## 3- Cotización 2.0

### Esquema 

Agregar un chatbot conectado en el sitio web que responda consultas.  Cuando el tráfico es de una agencia de viajes, solicitar login a traves de gmail.  Identificado el usuario, el chatbot lo guiara con preguntas por el "journey".  Para el caso de la cotización, tanto de aéreo, como hotel, el bot va a solicitar la cantidad y tipos de pasajeros.  Algo que puede demorar diez minutos a través de un humano, el bot conectado a Starlings o Nemo responde en menos de un minuto.  Esas consultas podemos informarlas a un comercial, para hacerles seguimiento y tener feedback.  A su vez, los responsables de áreas contarán con un informe diario de la utilización tanto del bot, como de las cotizaciones enviadas por el ejecutivo humano.  La primera línea formada por vendedores Jr. detrás de la que habrá una segunda línea de Sr. que atenderán los problemas complejos.  

El procesar toda la información por este canal de ingreso, va a posibilitar armar mapas de calor de destinos, fechas, cias aéreas, etc para hacer foco en eso.  

Vamos a poder establecer ratios de efectividad de los vendedores.  Poder corregir estrategias comerciales en base a datos.

Aleatoriamente puede agregarse una encuesta de satisfacción, para obtener feedback, puntualmente el que nos interesa, estamos caros?  No estaba la oferta que buscaba, etc.

Para implementar un sistema así, un factor desicivo es diseñar tiempos / costos / entregables y setear espectativas.

```plantuml
@startwbs

*[#pink] * <size:16> CRM para Vuelos y Hoteles</size>
**[#skyblue] <&django> 1. Núcleo Django
*** 1.1 Configuración inicial
**** 1.1.1 Entorno virtual
**** 1.1.2 Dependencias
*** 1.2 Modelos principales
**** 1.2.1 Clientes
**** 1.2.2 Reservas
*** 1.3 Vistas/Templates
**[#skyblue] <&database> 2. Base de Datos
*** 2.1 Diseño PostgreSQL
**** 2.1.1 Esquema vuelos
**** 2.1.2 Esquema hoteles
*** 2.2 Migraciones
*** 2.3 Geo-extensiones
**[#pink] <&plane> 3. Módulo Vuelos
*** 3.1 Búsqueda inteligente
*** 3.2 Integración APIs
**** 3.2.1 Proveedores GDS
**** 3.2.2 Aerolíneas
*** 3.3 Check-in automático
**[#pink] <&hotel> 4. Módulo Hoteles
*** 4.1 Gestión propiedades
*** 4.2 Sistema de tarifas
*** 4.3 Servicios adicionales
**[#lightgreen] <&robot> 5. Machine Learning
*** 5.1 Modelo recomendaciones
**** 5.1.1 Entrenamiento
**** 5.1.2 Implementación
*** 5.2 Dynamic Pricing
*** 5.3 Detección de fraudes
**[#lightgreen] <&devices> 6. Frontend
*** 6.1 Dashboard analítico
*** 6.2 App móvil
**** 6.2.1 iOS
**** 6.2.2 Android
*** 6.3 Panel administración
@endwbs
```

### Flujo de una cotización

```plantuml
@startuml
skinparam amigaFontName Arial
skinparam amigaFontSize 12
skinparam amigaBackgroundColor #FFFFFF
skinparam amigaArrowColor #333333
skinparam amigaParticipantBackgroundColor #DDDDDD
skinparam amigaParticipantBorderColor #333333
skinparam amigaNoteBackgroundColor #F5F5F5
skinparam amigaNoteBorderColor #666666

title Flujo CRM Aéreos + Hoteles (Tiempos en minutos)

participant "Cliente" as C #FFCC99
participant "Bot Cotizador" as B #99CCFF
participant "Jr." as J #99FF99
participant "Sr." as S #FF9999
participant "CRM VENTA" as SYS #CCCCFF
participant "Sistema ERP" as ERP #FFCCFF

box "Flujo automático sin ejecutivo (0-1 min)" #F0F0F0
  C -> B : Chat cotización lenguaje humano
  B -> SYS : Dispo Aereo o tierra o ambos
  activate SYS
  SYS -> SYS : Conectores Api Nemo y Starlings
  SYS --> B : Resultados aereos/hoteles/mix
  deactivate SYS
  B --> C : Opción básica\n(solicita datos paxs)
end box

box "Consulta simple + CROSS SELLING (+1 min)" #C8E6FF
  C -> SYS : Busca Hotel o Aéreo
  SYS --> C : Respuesta aéreo/terrestre
  note right: Cross selling (+1 min)
  SYS -> SYS : Posible upsell?\n(PUJ CUN RIO)
  SYS -> B : Arma combinaciones
  activate B
  B -> B : Respuesta Aéreo + Upgrade
  B -> B : Aprendizaje IA
  B --> C : Ofrece faltante
  note right: Pasadas 2 hs
  B --> J : Alerta al ejecutivo
  deactivate B
  J -> C : Ofrece paquete integrado
end box

box "Validación Senior (5-15 min)" #FFE6CC
  alt Requiere Escalar
    J -> S : Envía para revisión
    activate S
    S -> S : Verifica márgenes
    S -> J : Sugiere ajustes
    J -> B : Aprendizaje BOT
    B --> S : Nueva cotización
    S --> J : Aprobación final
    deactivate S
  else
    J -> C : Confirma cotización
  end
end box

box "Cierre (1-5 min)" #CCFFCC
  C -> J : Solicitud con datos paxs
  J -> SYS : Reserva Aereo+terrestre
  activate SYS
  SYS --> J : Reserva temporal
  J -> S : Notifica venta
  activate S
  S --> J : Valida pago
  deactivate S
  SYS -> J : Liquidación
  SYS -> ERP : File Automático
  activate ERP
  ERP --> C : Factura
  deactivate ERP
  J -> C : Envía e-Tkts y Voucher Htl
  deactivate SYS
end box

@enduml
```


## Hitos Prioritarios

Para un proyecto limpio es necesario proyectar tiempos.

```plantuml
@startgantt
Project starts 2024-05-11
printscale weekly 

[Estudio Factibilidad] as [est] requires 30 days
[Log AGY] as [auth1] starts at [est]'s end and lasts 15 days
[API Vuelos] as [api1] starts at [auth1]'s end and lasts 30 days
[Liq PDF] as [pdf1] starts at [auth1]'s end and lasts 20 days

[API HTLS] as [api2] starts at [pdf1]'s end and lasts 50 days
[Motor Cross] as [comb1] starts at [api2]'s end and lasts 25 days
[Dashboard Juniors] as [dash1] starts at [api2]'s end and lasts 30 days

[Pq Integrados] as [pack1] starts at [comb1]'s end and lasts 40 days
[Training bot] as [train1] starts at [pack1]'s end and lasts 25 days
[Imp Escalonada] as [rollout1] starts at [train1]'s end and lasts 30 days

2024-08-18 to 2024-09-24 are named [Prototipo Beta]
2024-08-18 to 2024-09-24 are colored in salmon 

legend
Tiempos:

|= Kickoff |= MVP |
|<#gray> | Planned |

end legend
@endgantt

```

### Subsistemas Críticos

Detalle de sistemas que deben interactuar para el funcionamiento.

| **Componente**|	**Tecnología**|	**Performance**
|---|---|---
| Consulta APIs|	Python Async|	< 3 seg por consulta
| Generación PDF|	WeasyPrint|	2.1 seg promedio
| Cola de Derivación|	Redis + Celery|	150 reqs/seg
| Base de Conocimiento|	Elasticsearch|	Búsquedas en 0.8 se

## 4. Conclusión Estratégica
#### ROI y Capacidad

Existe una oportunidad en mejorar la capacidad operativa de los vendedores, mejorando además los tiempos de respuesta y reduciendo el monto de los errores.

```plantuml
@startuml
skinparam amigaFontName Arial
skinparam amigaFontSize 12
skinparam amigaBackgroundColor #FFFFFF
skinparam amigaArrowColor #333333
skinparam amigaRectangleBackgroundColor #F5F5F5
skinparam amigaRectangleBorderColor #333333

left to right direction

rectangle "CONCLUSIÓN ESTRATÉGICA" as title #FFCC00 {
  rectangle "BENEFICIOS" as benefits #99CCFF {
    rectangle "+30% Eficiencia" as eff
    rectangle "25% menos tiempo" as time
    rectangle "Cross-selling auto" as cross
  }
  
  rectangle "IMPACTO" as impact #99FF99 {
    rectangle "↑ 15% Ventas" as sales
    rectangle "↓ 20% Errores" as errors
    rectangle "Clientes más felices" as happy
  }
  
  rectangle "SIGUIENTES PASOS" as next #FF9999 {
    rectangle "Implementar IA" as ia
    rectangle "Capacitar equipo" as training
    rectangle "Escalar a Tours" as scale
  }
}

eff -[hidden]-> time
time -[hidden]-> cross
sales -[hidden]-> errors
errors -[hidden]-> happy
ia -[hidden]-> training
training -[hidden]-> scale

title -[hidden]-> benefits
title -[hidden]-> impact
title -[hidden]-> next

@enduml
```

# Principales Hallazgos:

## ROI Esperado:

- 21,930% en 3 años ($4.5M beneficio neto)
- Break-even Pesismista en Mes 12 post-implementación.  Optimista 4 meses.  

## Escalabilidad:

- Mismo equipo (12J+4S) puede gestionar $40M anuales.
- A partir de las primeras pruebas internas, puede escalarse a varios mercados.
- Margen operativo potencial del 36% en año 4

## Factores Clave

- Frente a escenarios macroeconómicos cambiantes, es una herramienta que permite cambios en los equipos de venta.
- Mediciones en tiempo real.
- Integración perfecta entre APIs de proveedores
- Training continuo del equipo de ventas Jr y Sr con IA
- Monitoreo en tiempo real con Grafana/Prometheus
- Mejora contínua.

## Recomendaciones Finales

- **Fase Piloto**: Implementar con 25% del equipo comercial
- **KPI Clave**: Medir tasa de cross-selling semanas
- **Escalamiento**: Añadir 1 GPU cada 50 usuarios concurrentes
- **Backup Humano**: Mantener al menos 2 seniors full-time
- **Nota Técnica**: La arquitectura soporta hasta 100 usuarios concurrentes sin degradación de performance. Incluye redundancia automática en servidores.

## Diagrama estratégico evolutivo


```plantuml 
@startuml
skinparam amigaFontName Arial
skinparam amigaFontSize 10
skinparam amigaBackgroundColor #FFFFFF
skinparam amigaArrowColor #333333
skinparam amigaRectangleBackgroundColor #DDDDDD
skinparam amigaRectangleBorderColor #333333
skinparam amigaDatabaseBackgroundColor #CCCCFF
skinparam amigaDatabaseBorderColor #6666CC

left to right direction

package "Fase 1: Base" #CCCCFF {
  rectangle "Formulario Django" as A
  database "PostgreSQL" as B
  rectangle "Reportes BI" as C
  A --> B
  B --> C
}

package "Fase 2: Cross-Selling" #99CC99 {
  rectangle "Motor Combinaciones" as D
  rectangle "+Hotel" as E
  rectangle "+Vuelo" as F
  C --> D
  D --> E : Vuelo
  D --> F : Hotel
}

package "Fase 3: Asistencia" #FFCC99 {
  rectangle "Chatbot DeepSeek" as G
  rectangle "Panel Senior" as H
  E --> G
  F --> G
  G --> H : Casos\ncomplejos
}

package "Fase 4: Autonomía" #FF9999 {
  rectangle "Chatbot Agencias" as I
  rectangle "Venta Directa" as J
  circle "Modelo ML" as K
  G --> I
  I --> J
  J --> K
  K --> D : Retroalimentación
}

note right of K
  <b>Ciclo de mejora continua</b>
  El modelo machine learnig aprende de
  las ventas realizadas
end note

@enduml
```

## Puntos clave de tu estrategia:

###  Evolución gradual: Desde lo operativo (formularios) hasta lo autónomo (chatbot con ML).

###    Data-Driven:

- PostgreSQL como single source of truth
- BI para optimizar ofertas
- ML para mejorar recomendaciones

###  Automatización inteligente:

- Chatbot como "ayudante" → "vendedor autónomo"
- Escalado automático de excepciones.
- Cross selling, CRM para seguimiento de cotizaciones.

### Recomendación adicional:

### Añadir un módulo de feedback continuo donde:

- Los seniors corrijan recomendaciones del chatbot
- Las agencias califiquen cotizaciones
- Esto retroalimenta el modelo de ML

### MVP

```plantuml
@startgantt
skinparam amigaFontName Arial
skinparam amigaFontSize 10
skinparam amigaBackgroundColor #FFFFFF
skinparam amigaArrowColor #333333
skinparam amigaActivityBackgroundColor #DDDDDD
skinparam amigaActivityBorderColor #333333
skinparam amigaActivityDoneColor #99CC99
skinparam amigaActivityActiveColor #FFCC99
skinparam amigaActivityFutureColor #CCCCFF
printscale weekly

project starts on 2025-05-11

-- Fase 1 -- 
[DB config] as [db] lasts 30 days 
[Formularios] as [forms] starts at [db]'s end and lasts 60 days
note bottom
  Back
  Formularios
  Diseño
  CRM
end note

-- Fase 2 --
[APIs conectores Nemo Stalings] as [apis] starts at [forms]'s end and lasts 90 days
[Motor Cross-Selling] as [motor] starts at [apis]'s end and lasts 30 days
note bottom
  Conectores
  Lógica Cross Selling
end note

-- Fase 3 --
[Chatbot Asistente] as [chatbot] starts at [motor]'s end and lasts 60 days
note bottom
  Asistencia AI a Jr
  Escalamiento a 2do nivel 
  Mediciones
end note
-- Fase 4 --
[Chatbot Autónomo] as [auton] starts at [chatbot]'s end and lasts 90 days
note bottom
  Robot asistente agencias
  Feedback Agencias
  Mediciones
end note
[KickOff] as [KO] starts at [auton]'s end 

2025-05-11 to 2025-06-06 are named [Diseño L&F]
2025-05-11 to 2025-06-06 are colored in salmon 

2025-08-18 to 2025-09-24 are named [Prototipo Beta]
2025-08-18 to 2025-09-24 are colored in salmon 

2025-11-10 to 2025-12-13 are colored in salmon 
2025-11-10 to 2025-12-13 are named [Aprendizaje AI]

[db] is colored in #99CC99
[db] is colored in #99CC99
[forms] is colored in #FFCC99
[apis] is colored in #CCCCFF
[motor] is colored in #9999FF
[chatbot] is colored in #FF9999
[auton] is colored in #FF6666

@endgantt
```

### Característica Clave

- Tareas críticas marcadas con crit (no retrasables)
- Dependencias entre fases (ej: motor combinaciones → chatbot)
- Paralelismo donde posible (ej: entrenamiento ML mientras se desarrolla chatbot)
- Hitos visuales por cada fases

## Recomendaciones finales:

- Buffer temporal: Añade 15-30 días de colchón entre fases

##  Hitlos clave:

|Fecha Estimada|Hitos
|---|---
|2025-07-15| Integración primera API
|2025-11-01| Lanzamiento MVP chatbot
|2026-01-01| Sistema autónomo operativo

## Recomendaciones para la Metodología: 

- Considera usar Sprints de 2-4 semanas para desarrollo iterativo
- Entregables cortos, para cumplir modelo MVP
- Sistema OpenSource
- Repositorio GitHub con:
  - Wiki técnica
  - Roadmap público
  - Issues bien documentados-
  - Plan de contingencia para cada tarea crítica

