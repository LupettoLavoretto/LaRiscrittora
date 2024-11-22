=== lapide_uno ===
//opzione se non hai mai esplorato questa storia, e se non ci sono storie attive
+ {not (storiaUno == InCorso or storiaUno == Conclusa) and not (storiaDue == InCorso or storiaTre == InCorso)} Potresti conoscere la storia della prima lapide
    -> storia_uno

//opzione se c'è un'altra storia attiva
+ {storiaDue == InCorso or storiaTre == InCorso or storiaUno == Conclusa} La prima lapide ha scritto qualcosa che cambia a seconda che la storia sia già stata completata o meno -> hub_mausoleo

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
     + Ho risolto la prima storia
        ~ storiaUno = Conclusa
     + Non ho risolto la storia
     -
-> hub_mausoleo