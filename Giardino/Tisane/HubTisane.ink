=== hub_tisane ===
~ temp my_location = entity_location(PG)
//In quest'angolo possiamo assaporarci una bella tisana creata da noi.
Eccoci: è il momento di una bella tisana

    <- move_between_rooms(my_location)
    <- mentore
    + Inizi a preparare una tisana
    -
    
-> hub_tisane