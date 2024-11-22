=== hub_biblioteca ===
~ temp my_location = entity_location(PG)
//Qui avremo qualche info generica e poi la possibilità di leggerci qualcosa
Sei in biblioteca
-> randomizzazione_dono_luoghi ->

    <- move_between_rooms(my_location)
    <- mentore
    + Leggi un libro
    -
    
-> hub_biblioteca