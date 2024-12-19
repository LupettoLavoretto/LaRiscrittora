=== lichene_degli_abissi
TODO: quando ho capito come voglio gestire il tempo nel gioco, lo implemento qui. A quel punto i tre step non sono scelte ma cose che avanzano man mano.
//Collaborazione, ciclicità, cancellazione
    Una punticina bluastra emerge dal terreno.
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

=== muschio_delle_amanti
//Collaborazione, novità, ricordo
È solo una tua impressione, o i rami hanno iniziato a brillare?
+ Step uno
    C'è una polvere ramata, brillante, che scende da alcuni rami.
    -> main
+ Step due
    La polvere si è intrecciata, arrotolata, come a formare dei fili.
    -> main
+ Step tre.
    Senti un fremito nel ventre. I rami ora sono coperti da un fitto tappeto del color dell'alba.
    Quando lo sfiori le tue labbra tremano, ricordi ti invadono: quel bacio, quelle dita desiderate tra le coscie.
    Pienezza ti riempie: è per forza del muschio delle amanti.
    Potresti portarne un po' con te, sapendo che sparirà.
    O lasciarlo qui sull'albero.
        + + Raccogli un po' di muschio.
        Così vicino, il muschio ti chiama.
        Ti invita a fermare per un attimo tutto, a premiare come più ti piace il tuo corpo, dentro o fuori che sia.
        ~ fungoInCrescita = false
        ~ doniTrovati += muschiodelleamanti
        + + Non è ancora il momento.
        - -
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
Indipendenza, novità, cancellazione
+ Step uno
    -> main
+ Step due
    -> main
+ Step tre: il fungo è pronto!
    ~ fungoInCrescita = false
    -> main

=== pianta_cinque
Hai trovato una pianta cinque
Indipendenza, novità, cancellazione
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
