=== hub_tisane ===
~ temp my_location = entity_location(PG)
-> random_luogo_mentore ->
-> comparsa_anime ->


//In quest'angolo possiamo assaporarci una bella tisana creata da noi.
Eccoci: è il momento di una bella tisana

    <- move_between_rooms(my_location)
    <- mentore
    + Inizi a preparare una tisana
    + {doniTrovati != ()} Controlla li lista di oggetti che hai con te
        -> contenuti_inventario ->
    -
    
-> hub_tisane