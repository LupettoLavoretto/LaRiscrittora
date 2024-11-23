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
    -> hub_giardino

/* ---------------------------------

   Supporto alla giocatrice

 ----------------------------------*/


=== tutorial
Tutorial
    + Lo voglio ascoltare
        -> indicazioni
    + Passo
        ->->
    -
-> DONE


=== indicazioni
//Strutturare come wave sintetica?
Indicazioni tutorial
-(top)
    + Sul mausoleo
        Informazioni
            -> top
    + Sui funghi
        Informazioni
            -> top
    + {storiaUno == Conclusa}Sulle falene
        Informazioni
            -> top
    + {storiaUno == Conclusa}Sul labirinto
        Informazioni
            -> top
    + {storiaDue == Conclusa}Sulle tisane
        Informazioni
            -> top
    + {storiaDue == Conclusa}Sulle sirene
        Informazioni
            -> top
    + {storiaDue == Conclusa}Sulla biblioteca
        Informazioni
            -> top
    + Ho cambiato idea
        -> parlareColMentore
    -

-> parlareColMentore

=== consigli_storie ===
{
    - storiaUno == InCorso:
        -> consigli_storia_uno
    - storiaDue == InCorso:
        -> consigli_storia_due
    - storiaTre == InCorso:
        -> consigli_storia_tre
}

=== consigli_storia_uno
{~ Consiglio storia uno|Consiglio storia uno|Consiglio storia uno}
->parlareColMentore

=== consigli_storia_due
Consiglio storia due
->parlareColMentore

=== consigli_storia_tre
Consiglio storia tre
->parlareColMentore