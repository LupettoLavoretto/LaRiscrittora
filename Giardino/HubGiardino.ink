=== hub_giardino ===
~ temp my_location = entity_location(PG)
-> random_luogo_mentore ->
-> comparsa_anime ->

//Questo è il punto che troveremo a inizio gioco, e che fa da hub centrale della storia.
//Troveremo sempre un piccolo descrittore (randomico o meno, da vedere)

//Solo a inizio storia partirà la parte di "intro", utile a dare un benvenuto

<- move_between_rooms(my_location)
<- mentore
    + Ti siedi sulla panchina -> panchina
    -

-> DONE


=== panchina

->->


=== inizio
La storia inizia ora
    + scelta
    + scelta
    + Qualcuno ti osserva: gli parli.
        -> presentazioni
    -
-> hub_giardino