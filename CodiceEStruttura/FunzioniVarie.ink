//Per assegnare/cambiare pronomi di riferimento
=== assegnazione_genere === 
    + Mi trovo a mio agio col maschile.
        ~ pronomi += maschili
    + Preferisco i pronomi femminili.
        ~ pronomi += femminili
    + Vai di neutro, ama.
        ~ pronomi += neutri
    -
->->     a mio agio col maschile.
            ~ pronomi += maschili
        + Preferisco i pronomi femminili.
            ~ pronomi += femminili
        + Vai di neutro, ama.
            ~ pronomi += neutri
        -
->->

=== il_mio_nome ===
    + {il_mio_nome > 1} Il mio nome è {nome}
        ->->
    + {il_mio_nome > 1} <i> Non sento più questo nome come mio </i>
        -> top
    + ->
    - (top)
        ~ nome = "{~ Alessio|Gianni|Matteo|Alessandro|Lorenzo|Diego|Tommaso|Riccardo|Leonardo|Gabriele|Edoardo|Samuele|Liam|Nathan|Noah|Enea|Cesare|Ivo|Arturo|Nevio|Ettore|Roberto|Valerio|Pierluigi|Gianmaria|Gianmarco|Maurizio|Emanuele|Niccolò|Nicola|Filippo|Santiago|Alberto|Corrado|Ernesto|Giuliano|Ivan|Juri|Lupo|Tancredi|Jacob|Micahel|Ethan|Joshua|Daniel|Aurelio|Mario|Stefano|Cristian|Carmine|Ciro|Corrado|Carlo|Cesare|Carlo|Dante|Dario|Davide|Damiano|Diego|Domenico|Dino|Eugenio|Flavio|Filippo|Fabio|Francesco|Gaetano|Giordano|Giovanni|Alex|Alexander|Luca|Jacopo|Milo|Cristiano|Thomas|Lucas|Joele|Massimo|Giosuè|Oliver|William|James|Lucas|Henry|John|Ryan|Ethan|Gus|Logan|Nolan|Sean|Tyler}"
        
        + (nome_scelto)[<b>Mi chiamo {nome}</b>]Mi chiamo {nome}.
        + [<i>No, questo non è il mio nome.</i>]-> top
        - 
->->        