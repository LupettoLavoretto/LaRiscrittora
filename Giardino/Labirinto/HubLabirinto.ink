=== hub_labirinto ===
~ temp my_location = entity_location(PG)
//Forse la parte più introspettiva per la giocatrice, con domande diverse su come sta o simili, ma ancora non ne sono sicura.
//Lavorando anche su questioni di genere.
Sei nel labirinto

    <- move_between_rooms(my_location)
    <- mentore
    + Inizi a camminare
    + Trovi lo specchio -> lo_specchio
    -
    
-> hub_labirinto