=== hub_giardino ===
~ temp my_location = entity_location(PG)
//Qui ci viene detto che cosa è accessibile o meno come luogo, cosa possiamo o meno vedere, dove andare.
Sei nel giardino

    <- move_between_rooms(my_location)
    <- mentore
    + Esplori il giardino
    -
-> hub_giardino 
