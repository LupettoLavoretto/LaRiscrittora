//Variabili per la gestione della biblioteca
LIST coltivazioni = fungone
VAR coltivazioniColtivate = ()
VAR coltivazioniX = ()
VAR coltivazioniY = ()
VAR coltivazioniZ = ()
    //Libro che verrà proposto
    VAR fungoProposto = ()
    

=== test_coltivazioni ===
{~ Ho bisogno di lasciare nel passato|Vorrei dimenticare|Non ho più bisogno di}
+ {coltivazioniX != ()}<>qualcosa che riguarda il lavoro
    + + {coltivazioniX ^ coltivazioniZ != ()} Con qualcosa di z
        ~ fungoProposto = LIST_RANDOM(coltivazioniX ^ coltivazioniZ)
        {fungoProposto}
        ~ coltivazioniX -= fungoProposto
        ~ coltivazioniZ -= fungoProposto
        ~ libriLetti += fungoProposto
        -> da_lista_a_coltivazioni
    + + {coltivazioniX ^ coltivazioniY!= ()} Con qualcosa di y    
        ~ fungoProposto = LIST_RANDOM(coltivazioniX ^ coltivazioniY)
        {fungoProposto}
        ~ coltivazioniX -= fungoProposto
        ~ coltivazioniY -= fungoProposto
        ~ libriLetti += fungoProposto
        ->da_lista_a_coltivazioni
    + + No, vorrei qualcosa di diverso!
        -> test_libri

+ {coltivazioniY != ()}<>qualcosa che riguarda la spiritualità
    + + {coltivazioniY ^ coltivazioniZ != ()} Con qualcosa di z
        ~ fungoProposto = LIST_RANDOM(coltivazioniY ^ coltivazioniZ)
        ~ coltivazioniZ -= fungoProposto
        ~ coltivazioniY -= fungoProposto
        ~ libriLetti += fungoProposto
        -> da_lista_a_coltivazioni
    + + {coltivazioniX ^ coltivazioniY != ()} Con qualcosa di x    
        ~ fungoProposto = LIST_RANDOM(coltivazioniX ^ coltivazioniY)
        ~ coltivazioniX -= fungoProposto
        ~ coltivazioniY -= fungoProposto
        ~ libriLetti += fungoProposto
        -> da_lista_a_coltivazioni
    + + No, vorrei qualcosa di diverso!
        -> test_libri
        

+ {coltivazioniZ != ()}<>qualcosa che riguarda gli affetti
    + + {coltivazioniY ^ coltivazioniZ != ()} Con qualcosa di y
        ~ fungoProposto = LIST_RANDOM(coltivazioniY ^ coltivazioniZ)
        ~ coltivazioniZ -= fungoProposto
        ~ coltivazioniY -= fungoProposto
        ~ libriLetti += fungoProposto
        -> da_lista_a_coltivazioni
    + + {coltivazioniX ^ coltivazioniZ != ()} Con qualcosa di x    
        ~ fungoProposto = LIST_RANDOM(coltivazioniX ^ coltivazioniZ)
        ~ coltivazioniX -= fungoProposto
        ~ coltivazioniZ -= fungoProposto
        ~ libriLetti += fungoProposto
        -> da_lista_a_coltivazioni
    + + No, vorrei qualcosa di diverso!
        -> test_libri
        
+ {libriLetti != ()} Vorrei qualcosa che ho già letto
        -> rilettura
+ Mmm, mi è passata la voglia di leggere
    -> hub_biblioteca
-
-> DONE

=== da_lista_a_coltivazioni ===
{fungoProposto:
    - libroAnna:
        -> libro_anna
    - libroCeci:
        ->libro_ceci
    - libroGabri:
        -> libro_gabri
    - libroGreta:
        -> libro_greta

    - else: Non ho trovato un fungoProposto adatto, mi spiace
    -> test_libri
    
}


-> DONE


-> hub_funghi
