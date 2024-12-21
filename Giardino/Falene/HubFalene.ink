=== hub_falene ===
~ temp my_location = entity_location(PG)
-> random_luogo_mentore ->
-> comparsa_anime ->




//Questo è il posto degli animaletti amici che fanno cose carine. Da pensare se creare una attività specifica (es: disegnare) o se fanno solo cose buffe. Potrei pensare a fale con caratteri diversi.
Sei dalle falene
-> randomizzazione_dono_luoghi ->

    <- move_between_rooms(my_location)
    <- mentore
    + Coccoli le falene
    + {doniTrovati != ()} Controlla li lista di oggetti che hai con te
        -> contenuti_inventario
    -
    
-> hub_falene-> main