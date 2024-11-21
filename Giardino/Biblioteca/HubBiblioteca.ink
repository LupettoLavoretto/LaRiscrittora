=== hub_biblioteca ===
~ temp my_location = entity_location(PG)
//Qui avremo qualche info generica e poi la possibilità di leggerci qualcosa
Sei in biblioteca

    <- move_between_rooms(my_location)
    + Leggi un libro
    -
    
-> hub_biblioteca