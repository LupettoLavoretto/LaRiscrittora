=== hub_biblioteca ===
~ temp my_location = entity_location(PG)
//Qui avremo qualche info generica e poi la possibilità di leggerci qualcosa
Sei in biblioteca
-> randomizzazione_dono_luoghi ->

    <- move_between_rooms(my_location)
    <- mentore
    + Leggi un libro -> test_libri
    -
    
-> hub_biblioteca


=== test_libri
+ Vorrei un libro x
    + + Con qualcosa di z
        ~ libro = libriX ^ libriZ
        -> da_lista_a_libri
    + + Con qualcosa di y    
        ~ libro = libriX ^ libriY
        -> da_lista_a_libri
+ Vorrei un libro y
    + + Con qualcosa di z
        ~ libro = libriY ^ libriZ
        -> da_lista_a_libri
    + + Con qualcosa di x    
        ~ libro = libriX ^ libriY
        -> da_lista_a_libri
+ Vorrei un libro z
    + + Con qualcosa di y
        ~ libro = libriY ^ libriZ
        -> da_lista_a_libri
    + + Con qualcosa di x    
        ~ libro = libriX ^ libriZ
        -> da_lista_a_libri          

=== da_lista_a_libri ===
{
    - libroAnna:
        -> libro_anna
    - libroCeci:
        ->libro_ceci
    - libroGabri:
        -> libro_gabri
    - libroGreta:
        -> libro_greta

    - else: Non ho trovato un libro adatto, mi spiace
    -> test_libri
    
}


-> DONE





