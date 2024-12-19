=== lichene_degli_abissi
TODO: quando ho capito come voglio gestire il tempo nel gioco, lo implemento qui. A quel punto i tre step non sono scelte ma cose che avanzano man mano.
    Una punticina bluastra emerge dal terreno.
    Collaborazione, ciclicità, cancellazione
    + Step uno
        Un odore salmastro si diffonde per la serra.
        -> main
    + Step due
        Ora la punta è più grande, e attorno c'è un foro circolare.
        -> main
    + Step tre
        Eccolo qui. Un lichene degli abissi.
        Il lichene degli abissi è una danza, un roteare costante di fungo ed alga. Un ripetersi anche nell'errore, nel dolore.
        Girano e rigirano senza mai davvero afferrarsi.
        Se qualcuno sfiora il lichene, questo è destinato a scomparire.
            + +  Tocchi il lichene.
                Un piccolo sbuffo. Le tue dita ora sanno di mare.
                Il lichene è scomparso, tu no.
                C'è qualcuno che devi allontanare?
            ~ fungoInCrescita = false
            + + Lo lasci dov'è.
            - -
            -> main

=== pianta_due
Hai trovato una pianta due
Collaborazione, stabilità, ricordo
+ Step uno
    -> main
+ Step due
    -> main
+ Step tre: il fungo è pronto!
    ~ fungoInCrescita = false
    -> main


=== pianta_tre
Hai trovato una pianta tre
Collaborazione, ciclicità, ricordo
+ Step uno
    -> main
+ Step due
    -> main
+ Step tre: il fungo è pronto!
    ~ fungoInCrescita = false
    -> main

=== pianta_quattro
Hai trovato una pianta quatto
Indipendenza, stabilità, cancellazione
+ Step uno
    -> main
+ Step due
    -> main
+ Step tre: il fungo è pronto!
    ~ fungoInCrescita = false
    -> main

=== pianta_cinque
Hai trovato una pianta cinque
Indipendenza, stabilità, cancellazione
+ Step uno
    -> main
+ Step due
    -> main
+ Step tre: il fungo è pronto!
    ~ fungoInCrescita = false
    -> main


=== pianta_sei
Hai trovato una pianta sei
Indipendenza, ciclicità, ricordo
+ Step uno
    -> main
+ Step due
    -> main
+ Step tre: il fungo è pronto!
    ~ fungoInCrescita = false
    -> main
