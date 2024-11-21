=== hub_mausoleo ===
~ temp my_location = entity_location(PG)
//Da qui possiamo riprendere una storia in corso, o prenderne una nuova. Se c'è una storia in corso le altre non sono accessibili, e plausibilmente vedremo il fantasma di turno che ci aspetta.
Sei nel mausoleo

    <- move_between_rooms(my_location)
    <- mentore
    + Esplori una delle tombe -> tombe
    -
    
-> hub_mausoleo

=== tombe
TODO: nel momento in cui avvio una storia, le altre non sono più accessibili. Decidere se questa cosa è dettata nel knot "tombe" o prima, nelle scelte possibili nel mausoleo (es: "esplori una delle tombe" se non hai storie attive, "parli con XXX" se hai la sua storia attiva (e in questo caso potrei usare le variabili che attivano la storia per dire che ok, c'è il fantasma. Tra l'altro potrei creare degli stati per queste variabili, un po' come in loop (contraddizione non trovata, scelta uno, scelta due, dubbio), dove metto "storia non letta" e quindi la tomba dice una cosa, "storia attiva" e ne dice un'altra e "storia risolta" con l'aggettivo che deriva dalle nostre scelte.

-> DONE