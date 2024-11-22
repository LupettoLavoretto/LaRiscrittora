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

//queste opzioni poi non saranno scelte dirette, ma risultati delle scelte fatte durante il gioco
    + Ho risolto la prima storia e attribuito allo spettro il primo nuovo stato
        ~ storiaUno = Conclusa
        ~ effettivoStatoSpettroUno = NuovoStatoUno
    + Ho risolto la prima storia e attribuito allo spettro il secondo nuovo stato
        ~ storiaUno = Conclusa
        ~ effettivoStatoSpettroUno = NuovoStatoDue        
    + Non ho risolto la storia
    -
-> hub_mausoleo