@startuml
skinparam handwrite true
skinparam backgroundColor #EEEBDC

["Sistema\nTurístico"] as ST
["Espacio\nGeográfico"] as EG
["Oferta"] as OF
["Demanda"] as DE
["Operadores\nde Mercado"] as OM

@enduml

@startuml

skinparam handwrite true
skinparam backgroundColor #EEEBDC
package "Sistema Turístico" {
  [Oferta] 
  [Espacio\nGeográfico] 
  [Operadores\nde Mercado]
  [Demanda]
}
@enduml
