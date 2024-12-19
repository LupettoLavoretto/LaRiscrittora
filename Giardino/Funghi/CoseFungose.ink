=== lichene_degli_abissi
TODO: quando ho capito come voglio gestire il tempo nel gioco, lo implemento qui. A quel punto i tre step non sono scelte ma cose che avanzano man mano.
//Collaborazione, ciclicità, cancellazione
//Outcome: allontana qualcuno.
    Una punticina bluastra emerge dal terreno.
    + Step uno
        Un odore salmastro si diffonde per la serra.
        Ora la punta è più grande, e attorno c'è un foro circolare.
        -> main
    + Step due
        Il foro ha le dimensioni di un pugno, mentre la punta sembra roteare nell'aria a incredibile velocità, completamente silenziosa.
        -> main
    + Step tre
        Eccolo qui. Un <i>Lichene degli abissi</i>.
        Il lichene degli abissi è una danza, un roteare costante di fungo ed alga. Un ripetersi anche nell'errore, nel dolore.
        Alga e fungo girano e rigirano senza mai afferrarsi.
        Se qualcuno sfiora il lichene, questo è destinato a scomparire.
            + +  Tocchi il lichene.
                Un piccolo sbuffo. Le tue dita ora sanno di mare.
                Il lichene è scomparso, tu no.
                C'è qualcuno che devi allontanare?
                ~ inCrescita = false
            + + Lo lasci dov'è.
            - -
            -> main

=== muschio_delle_amanti
//Collaborazione, novità, ricordo
//Outcome: datti piacere
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
    Pienezza ti riempie: è per forza del <i>Muschio delle amanti</i>.
    Potresti portarne un po' con te, sapendo che sparirà.
    O lasciarlo qui sull'albero.
        + + Raccogli un po' di muschio.
            Così vicino, il muschio ti chiama.
            Ti invita a fermare per un attimo tutto, a premiare come più ti piace il tuo corpo, dentro o fuori che sia.
            ~ inCrescita = false
            {
            - doniTrovati hasnt muschiodelleamanti:
            ~ doniTrovati += muschiodelleamanti
            }
        + + Non è ancora il momento.
        - -
            -> main


=== canto_delle_compagne
//Collaborazione, ciclicità, ricordo
//Outcome: canta, sola o con le compagne
+ Step uno
    Piccole palline rosse sul terreno caldo.
    L'umidità evapora creando una nebbiolina rossastra.
    -> main
+ Step due
    Le palline ondeggiano nella nebbia ora, sospinte da un vento invisibile.
    Si rincorrono e si tuffano sul terreno, facendo come un suono di risata.
    -> main
+ Step tre.
    La serra tutta si è fatta rossa, uno stupendo <i>Canto delle compagne</i> galleggia sul terreno.
    In un altro tempo, più pauroso, questo fungo veniva chiamato
    "Canto delle streghe".
    L'euforia ti riempie i polmoni, senti la gioia di sapere che non sei mai stata davvero sola.
    Hai voglia di cantare.
    Questo spingerà il fungo altrove, verso altre streghe, altre compagne.
    + + È il momento di cantare.
            Puoi farlo da te, o chiamare qualcuno a cui tieni.
            Riempiti dell'euforia del fungo, e lascia che il mondo intero ascolti la tua voce.
            Con l'ultima nota, il fungo sarà altrove, da un'altra compagna bisognosa.
            ~ inCrescita = false
            -> main
    + + No, non ora.
        -> main

=== la_spazzata
//Indipendenza, novità, cancellazione
//Outcome: prometti di dire qualcosa che ti pesa sullo stomaco.
+ Step uno
    Uh. Non vedi nulla. Forse qualcosa è andato storto?
    -> main
+ Step due
    La serra è vuota, eppure qualcosa è cambiato. Le luci sono più tenui. Il soffitto di rami sfiora la tua testa.
    -> main
+ Step tre
    Tutto scricchiola, gli alberi sembrano gemere dal dolore.
    Il terreno stesso è impacciato, crepato.
    Ora riconosci cosa hai piantato: una grossa, esplosiva <i>Spazzata</i>.
    La Spazzata non è un fungo, non è una pianta, ma è un insieme di tutte queste cose.
    E se non viene fatta sfogare, esploderà spazzando via tutta la serra.
    + + Bene: facciamola sfogare!
        Questa è la parte più facile: basta prometterle che dirai a qualcuno qualcosa che senti sullo stomaco. Qualcosa che sono giorni o settimane (uh: questa Spazzata è molto grande. forse mesi?) che ti pesa.
            Falle la promessa, e se ne andrà.
            Ma se poi tradisci la promessa, la Spazzata tornerà ancora più forte.
            ~ inCrescita = false
            {
            - doniTrovati hasnt baccadellaaddolorata:
            ~ doniTrovati += baccadellaaddolorata
            }
        -> main
    + + Non ora.
        -> main

=== bacca_della_addolorata
//Indipendenza, novità, cancellazione
+ Step uno
    Una mano rugosa stritola il terreno, le sue dita sembrano arrivare a infinita profondità.
    -> main
+ Step due
    Dalla troncatura della mano emergono piccoli rami ricolmi di fiorellini bianchi. Ogni volta che espiri, un fiorellino vola via.
    -> main
+ Step tre.
    Nè rami, nè fiori. Solo la mano, e una piccolissima bacca vermiglia.
    Hai trovato una <i>Bacca dell'addolorata</i>. Una pianta cara a chi ha finalmente trovato la sua strada, ma non riesce ad avanzare.
    La sua bacca aiuta a capire cosa ci vincola, cosa non ci lascia allontanare.
        + + La afferri.
        La mano molla la sua presa, rivelandosi per quel che era dall'inizio: solo un insieme tenace di radici.
        Senti dalle tue spalle qualcosa sciogliersi, scivolare via: ora hai un po' meno paura di camminare.
        ~ inCrescita = false
        
        -> main
        + + Non è il momento.
        -> main


=== pianta_sei
Hai trovato una pianta sei
Indipendenza, ciclicità, ricordo
+ Step uno
    -> main
+ Step due
    -> main
+ Step tre: il fungo è pronto!
    ~ inCrescita = false
    -> main
