=== lapide_due ===
//opzione se non hai mai esplorato questa storia, e se non ci sono storie attive
+ {not (storiaDue == InCorso or storiaDue == Conclusa) and not (storiaUno == InCorso or storiaTre == InCorso)} Potresti conoscere la storia della seconda lapide, {effettivoStatoSpettroDue}
    -> storia_due

//opzione se c'è un'altra storia attiva
+ {storiaUno == InCorso or storiaTre == InCorso or storiaDue == Conclusa} La seconda lapide appartiene a {effettivoStatoSpettroDue} -> hub_mausoleo

//opzione se questa storia è attiva
+ {storiaDue == InCorso} Il fantasma della seconda storia ti attende -> aiuto_storia_due


+ ->

-> DONE



=== storia_due ===
//la storia in corso viene attivata, e le altre non saranno accessibili fino alla sua conclusione
~ storiaDue = InCorso
Ascolti la seconda storia
-> hub_mausoleo



=== aiuto_storia_due ===

//queste opzioni poi non saranno scelte dirette, ma risultati delle scelte fatte durante il gioco
     + Ho risolto la seconda storia dando al secondo spettro il secondo stato
        ~ storiaDue = Conclusa
        ~ effettivoStatoSpettroDue = NuovoStatoUnoDue
     + Non ho risolto la storia
     -
-> hub_mausoleo