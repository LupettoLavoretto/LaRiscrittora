=== hub_biblioteca ===
~ temp my_location = entity_location(PG)
-> random_luogo_mentore ->
-> comparsa_anime ->



//Qui avremo qualche info generica e poi la possibilità di leggerci qualcosa
Sei in biblioteca
-> randomizzazione_dono_luoghi ->

    <- move_between_rooms(my_location)
    <- mentore
    + Leggi un libro -> test_libri
    + {doniTrovati != ()} Controlla la lista di oggetti che hai con te
        -> contenuti_inventario
    -
    
-> hub_biblioteca
