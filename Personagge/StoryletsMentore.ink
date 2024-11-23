=== storylets_mentore ===
{
 - presentazioni == 0: -> presentazioni
 - tutorial == 0: -> tutorial
 
 - else: ->->

}

+ ->
-> DONE



=== presentazioni ===
    Mentore: Ma dimmi, come vuoi che ti chiami?
        -> il_mio_nome ->
    Mentore: E quali sono i pronomi in cui ti riconosci?
        -> assegnazione_genere ->
    Mentore: E allora: piacere di conoscerti, {nome}.
    Mentore: E {pronomi has maschili: benvenuto|{pronomi has femminili: benvenuta|benvenutə}}. Spero ti troverai bene, qui.
    ->->
    
=== tutorial
Tutorial
    + Lo voglio ascoltare
        -> indicazioni
    + Passo
        ->->
    -
-> DONE


= indicazioni
//Strutturare come wave sintetica?
Indicazioni tutorial
    + Sul mausoleo
    + Sui funghi
    + {storiaUno == Conclusa}Sulle falene
    + {storiaUno == Conclusa}Sul labirinto
    + {storiaDue == Conclusa}Sulle tisane
    + {storiaDue == Conclusa}Sulle sirene
    + {storiaDue == Conclusa}Sulla biblioteca
    -

->->