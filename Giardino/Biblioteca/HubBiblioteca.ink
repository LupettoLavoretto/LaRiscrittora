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


=== test_libri ===
+ Vorrei un libro x
    + + Con qualcosa di z
        ~ libro = libriX ^ libriZ
        ~ libriX -= libro
        ~ libriZ -= libro
        ~ libriLetti += libro
        -> da_lista_a_libri
    + + Con qualcosa di y    
        ~ libro = libriX ^ libriY
        ~ libriX -= libro
        ~ libriY -= libro
        ~ libriLetti += libro
        -> da_lista_a_libri

+ Vorrei un libro y
    + + Con qualcosa di z
        ~ libro = libriY ^ libriZ
        ~ libriZ -= libro
        ~ libriY -= libro
        ~ libriLetti += libro
        -> da_lista_a_libri
    + + Con qualcosa di x    
        ~ libro = libriX ^ libriY
        ~ libriX -= libro
        ~ libriY -= libro
        ~ libriLetti += libro
        -> da_lista_a_libri

+ Vorrei un libro z
    + + Con qualcosa di y
        ~ libro = libriY ^ libriZ
        ~ libriZ -= libro
        ~ libriY -= libro
        ~ libriLetti += libro
        -> da_lista_a_libri
    + + Con qualcosa di x    
        ~ libro = libriX ^ libriZ
        ~ libriX -= libro
        ~ libriZ -= libro
        ~ libriLetti += libro
        -> da_lista_a_libri          
+ {libriLetti != ()} Vorrei qualcosa che ho già letto
        -> rilettura
-
-> DONE

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

=== rilettura ===
    + {libriLetti has libroAnna} Rileggi il racconto di Anna
        -> libro_anna
    + {libriLetti has libroCeci} Rileggi il racconto di Ceci
        ->libro_ceci
    + {libriLetti has libroGabri} Rileggi il racconto di Gabri
        -> libro_gabri
    + {libriLetti has libroGreta} Rileggi il racconto di Greta
        -> libro_greta
    + Ho cambiato idea, voglio una storia nuova.
        -> test_libri
    -    
-> hub_biblioteca

