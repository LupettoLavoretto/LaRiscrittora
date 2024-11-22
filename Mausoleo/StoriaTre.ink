=== lapide_tre ===
//opzione se non hai mai esplorato questa storia, e se non ci sono storie attive
+ {not (storiaTre == InCorso or storiaTre == Conclusa) and not (storiaDue == InCorso or storiaUno == InCorso)} Potresti conoscere la storia della terza lapide
    -> storia_tre

//opzione se c'è un'altra storia attiva
+ {storiaDue == InCorso or storiaUno == InCorso  or storiaTre == Conclusa} La terza lapide ha scritto qualcosa che cambia a seconda che la storia sia già stata completata o meno -> hub_mausoleo

//opzione se questa storia è attiva
+ {storiaTre == InCorso} Il fantasma della terza storia ti attende -> aiuto_storia_tre

+ ->

-> DONE

=== storia_tre ===
//la storia in corso viene attivata, e le altre non saranno accessibili fino alla sua conclusione
~ storiaTre = InCorso
Ascolti la terza storia
-> hub_mausoleo



=== aiuto_storia_tre ===
     + Ho risolto la terza storia
        ~ storiaTre = Conclusa
     + Non ho risolto la storia
     -
-> hub_mausoleo