=== hub_centrale ===
~ temp my_location = entity_location(PG)
//Questo è il punto che troveremo a inizio gioco, e che fa da hub centrale della storia.
//Troveremo sempre un piccolo descrittore (randomico o meno, da vedere) e la scelta se andare al mausoleo o nel giardino.
//Saltuariamente potremmo trovare qui il mentore (o altre figure)
//Solo a inizio storia partirà la parte di "intro", utile a dare un benvenuto


{
    - hub_centrale== 1: -> inizio
}

<- move_between_rooms(my_location)

-> hub_centrale



=== inizio
La storia inizia ora
    + scelta
    + scelta
    -

-> hub_centrale