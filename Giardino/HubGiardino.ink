=== hub_giardino ===
~ temp my_location = entity_location(PG)
-> random_luogo_mentore ->
-> comparsa_anime ->



//Qui ci viene detto che cosa è accessibile o meno come luogo, cosa possiamo o meno vedere, dove andare.
Sei nel giardino

    <- move_between_rooms(my_location)
    <- mentore
    + Ti siedi sulla panchina -> panchina
    -
-> hub_giardino 


=== panchina

->->