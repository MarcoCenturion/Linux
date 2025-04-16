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
| 2024 | 26                    | ██████ (26)     |
| 2025 | 30                    | ████████ (30)   |
| 2026 | 35                    | ██████████ (35) |

### Indicadores

|KPI|	2024|	2025|	2026
|---|---|---|---
|Ventas Vuelos|	$14M|	$16M|	$18M
|Ventas Hoteles|	$10M|	$12M|	$14M
|Paquetes (Cross-Sell)|	$2M|	$4M|	$6M
|Margen Operativo|	30%|	32%|	34%

## 2. Roadmap MVP

### Etapas Clave

```mermaid
%%{init: {'theme': 'forest', 'fontFamily': 'Arial', 'gantt': {'barHeight': 10}}}%%
gantt
    title Cronograma MVP (6 meses)
    dateFormat  YY-MM-DD
    section Núcleo
    Autenticación : done, auth, 24-01-01, 14d
    API Vuelos : active, vuelos, 24-01-15, 28d
    section Complementos
    API Hoteles : hoteles, 24-02-12, 21d
    Generador PDF : pdf, 24-03-04, 14d
    section Validación
    Pilot Controlado : pilot, 24-03-18, 30d
    Go-Live Full : golive, 24-04-17, 14d
```

## 3- Cotización 2.0

### Esquema 

Agregar un chatbot conectado en el sitio web que responda consultas.  Cuando el tráfico es de una agencia de viajes, solicitar login a traves de gmail.  Identificado el usuario, el chatbot lo guiara con preguntas por el "journey".  Para el caso de la cotización, tanto de aéreo, como hotel, el bot va a solicitar la cantidad y tipos de pasajeros.  Algo que puede demorar diez minutos a través de un humano, el bot conectado a Starlings o Nemo responde en menos de un minuto.  Esas consultas podemos informarlas a un comercial, para hacerles seguimiento y tener feedback.  A su vez, los responsables de áreas contarán con un informe diario de la utilización tanto del bot, como de las cotizaciones enviadas por el ejecutivo humano.  La primera línea formada por vendedores Jr. detrás de la que habrá una segunda línea de Sr. que atenderán los problemas complejos.  

El procesar toda la información por este canal de ingreso, va a posibilitar armar mapas de calor de destinos, fechas, cias aéreas, etc para hacer foco en eso.  

Vamos a poder establecer ratios de efectividad de los vendedores.  Poder corregir estrategias comerciales en base a datos.

Aleatoriamente puede agregarse una encuesta de satisfacción, para obtener feedback, puntualmente el que nos interesa, estamos caros?  No estaba la oferta que buscaba, etc.

Para implementar un sistema así, un factor desicivo es diseñar tiempos / costos / entregables y setear espectativas.

### Flujo de una cotización

```mermaid
%%{init: {'theme': 'forest', 'fontFamily': 'Arial', 'gantt': {'barHeight': 40}}}%%
sequenceDiagram
    title Flujo CRM Aéreos + Hoteles (Tiempos en minutos)
    participant C as Cliente
    participant B as Bot Cotizador
    participant J as Junior
    participant S as Senior
    participant SYS as CRM VENTA
    participant ERP as Sistema ERP

    rect rgb(240, 240, 240)
        Note over C,B: Flujo automático sin ejecutivo (Tiempo: 0-1 min)
        C->>+B: Chat cotización lenguaje humano
        B->>+SYS: Dispo Aereo o tierra o ambos
        SYS->>SYS: Conectores Api Nemo y Starlings con reglas comerciales
        SYS-->>-B: Resultados aereos, hoteles o mix
        B-->>-C: Opción básica (vuelo/hotel) solicita datos paxs
    end

    rect rgb(200, 230, 255)
        Note over C,J: Consulta simple al bot + CROSS SELLING (Tiempo: 1 min)
        C->>+SYS: Busca Hotel o Aéreo
        SYS->>C: Respuesta aéreo o terrestre 
        Note over J,SYS: Cross selling (Tiempo: + 1 min)
        SYS->>+SYS: Posible upsell? (ej. PUJ CUN RIO)
        SYS->>+B: Arma combinaciones
        B->>B: Respuesta Aéreo + oportunidad Upgrade
        B->>B: Aprendizaje IA
        B-->>C: Ofrece faltante al cliente.
        Note over B,J: Pasadas 2 hs 
        B-->>J: Alerta al ejecutivo.
        J->>C: Ofrece paquete integrado / Solicita datos
    end

    rect rgb(255, 230, 200)
        Note over J,S: Validación Senior consulta compleja (Tiempo: 5-15 min)
        alt Requiere Escalar 2do nivel
            J->>+S: Envía para revisión
            S->>S: Verifica márgenes
            S->>J: Sugiere ajustes
            J->>B: Aprendizaje BOT
            B-->>S: Nueva cotización
            S-->>-J: Aprobación final
        else
            J->>C: Confirma cotización
        end
    end

    rect rgb(200, 255, 200)
        Note over C,SYS: Cierre (Tiempo: 1-5 min)
        C->>+J: Solicitud con datos paxs 
        J->>+SYS: Reserva Aereo+terrestre
        SYS-->>-J: Reserva temporal
        J->>+S: Notifica venta
        S-->>-J: Valida pago
        SYS->>J: Liquidación
        SYS->>+ERP : File Automático
        ERP-->>-C: Factura
        J->>C: Envía e-Tkts y Voucher Htl
    end
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

```
CONCLUSIÓN ESTRATÉGICA
├─ BENEFICIOS
│  ├─ +30% Eficiencia
│  ├─ 25% menos tiempo
│  └─ Cross-selling auto
├─ IMPACTO
│  ├─ ↑ 15% Ventas
│  ├─ ↓ 20% Errores
│  └─ Clientes más felices
└─ SIGUIENTES PASOS
   ├─ Implementar IA
   ├─ Capacitar equipo
   └─ Escalar a Tours
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

```mermaid
%%{init: {'theme': 'forest', 'fontFamily': 'Arial', 'gantt': {'barHeight': 40}}}%%
flowchart LR
    subgraph Fase1[Fase 1: Base]
        A[Formulario Django] --> B[(PostgreSQL)]
        B --> C[Reportes BI]
    end
    
    subgraph Fase2[Fase 2: Cross-Selling]
        C --> D{Motor Combinaciones}
        D -->|Vuelo| E[+Hotel]
        D -->|Hotel| F[+Vuelo]
    end
    
    subgraph Fase3[Fase 3: Asistencia]
        E --> G[Chatbot DeepSeek]
        F --> G
        G -->|Casos complejos| H[Panel Senior]
    end
    
    subgraph Fase4[Fase 4: Autonomía]
        G --> I[Chatbot para Agencias]
        I --> J[Venta Directa]
        J --> K((Modelo ML))
        K --> D
    end
    
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

```mermaid
%%{init: {'theme': 'forest', 'fontFamily': 'Arial', 'gantt': {'barHeight': 10}}}%%
gantt
    title Cronograma Simplificado
    dateFormat  YY-MM
    section Fase 1
    Base de Datos          :done, 2024-10, 2m
    Formularios            :active, 2024-12, 2m
    section Fase 2
    APIs Proveedores       :2025-02, 3m
    Motor Cross-Selling    :2025-05, 1m
    section Fase 3
    Chatbot Asistente      :2025-06, 2m
    section Fase 4
    Chatbot Autónomo       :2025-09, 3m
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

