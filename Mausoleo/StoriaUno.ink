=== lapide_uno ===
//opzione se non hai mai esplorato questa storia, e se non ci sono storie attive
+ {not (storiaUno == InCorso or storiaUno == Conclusa) and not (storiaDue == InCorso or storiaTre == InCorso)} Potresti conoscere la storia della prima lapide, {effettivoStatoSpettroUno}
    -> storia_uno

//opzione se c'è un'altra storia attiva
+ {storiaDue == InCorso or storiaTre == InCorso or storiaUno == Conclusa} La prima lapide appartiene a {effettivoStatoSpettroUno} -> hub_mausoleo

//opzione se questa storia è attiva
+ {storiaUno == InCorso} Il fantasma della prima storia ti attende -> aiuto_storia_uno

+ ->

-> DONE

=== storia_uno ===
//la storia in corso viene attivata, e le altre non saranno accessibili fino alla sua conclusione
~ storiaUno = InCorso
Ascolti la prima storia
-> hub_mausoleo


=== aiuto_storia_uno ===
    + {doniTrovati != ()} Offri un dono allo spettro e inizi la sua storia
        -> gestione_inventario -> capitolo_uno
//queste opzioni poi non saranno scelte dirette, ma risultati delle scelte fatte durante il gioco

= capitolo_uno
Dopo il tuo dono, la quantità di inchiostro a disposizione è {statoInchiostroSpettroUno}.
     -> azioniInchiostro ->
    + Ho risolto la prima storia e attribuito allo spettro il primo nuovo stato
        ~ storiaUno = Conclusa
        ~ effettivoStatoSpettroUno = NuovoStatoUno
    + Ho risolto la prima storia e attribuito allo spettro il secondo nuovo stato
        ~ storiaUno = Conclusa
        ~ effettivoStatoSpettroUno = NuovoStatoDue        
    + Non ho risolto la storia
    -
-> hub_mausoleo

=== riconoscimento_valore_dono_storia_uno ===
Passo per "riconoscimento valore"
//Qui facciamo in modo che, a seconda del dono, ci siano reazioni diverse da parte del fantasma, e "inchiostro" o quel che sarà diverso.
//La logica è quella di raggruppare i doni tra non apprezzati, neutri, apprezzati, e un dono unico, e quindi una risposta ad hoc per gruppo, e una variazione di inchiostro per gruppo.
->->