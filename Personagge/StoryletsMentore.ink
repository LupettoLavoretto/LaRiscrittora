=== storylets_mentore ===
{
 - parlareColMentore == 1: -> presentazioni(->parlareColMentore)
 - else: ->->

}

+ ->
-> DONE



=== presentazioni(->return_to) ===
Mentore: Ma dimmi, come vuoi che ti chiami?
- (top)
    ~ nome = "{~ Alessio|Gianni|Matteo|Alessandro|Lorenzo|Diego|Tommaso|Riccardo|Leonardo|Gabriele|Edoardo|Samuele|Liam|Nathan|Noah|Enea|Cesare|Ivo|Arturo|Nevio|Ettore|Roberto|Valerio|Pierluigi|Gianmaria|Gianmarco|Maurizio|Emanuele|Niccolò|Nicola|Filippo|Santiago|Alberto|Corrado|Ernesto|Giuliano|Ivan|Juri|Lupo|Tancredi|Jacob|Micahel|Ethan|Joshua|Daniel|Aurelio|Mario|Stefano|Cristian|Carmine|Ciro|Corrado|Carlo|Cesare|Carlo|Dante|Dario|Davide|Damiano|Diego|Domenico|Dino|Eugenio|Flavio|Filippo|Fabio|Francesco|Gaetano|Giordano|Giovanni|Alex|Alexander|Luca|Jacopo|Milo|Cristiano|Thomas|Lucas|Joele|Massimo|Giosuè|Oliver|William|James|Lucas|Henry|John|Ryan|Ethan|Gus|Logan|Nolan|Sean|Tyler}"
    
    + (nome_scelto)[<b>Mi chiamo {nome}</b>]Mi chiamo {nome}.
    + [<i>No, questo non è il mio nome.</i>]-> top
    - 
Mentore: Piacere di conoscerti, {nome}.
Mentore: E quali sono i pronomi in cui ti riconosci?
->return_to