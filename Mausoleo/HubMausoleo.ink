=== hub_mausoleo ===
~ temp my_location = entity_location(PG)
//Da qui possiamo riprendere una storia in corso, o prenderne una nuova. Se c'è una storia in corso le altre non sono accessibili, e plausibilmente vedremo il fantasma di turno che ci aspetta.
Sei nel mausoleo
    <- move_between_rooms(my_location)
    <- mentore
    + Esplori una delle lapidi -> lapidi
    -
    
-> hub_mausoleo

=== lapidi
    <-lapide_uno
    <-lapide_due
    <-lapide_tre
    + Preferisci fare altro
        -> hub_mausoleo

-> DONE