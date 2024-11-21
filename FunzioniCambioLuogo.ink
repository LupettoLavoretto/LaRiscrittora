//Funzione per spostarsi da un luogo all'altro a seconda di dove mi trovo -> da vedere se ha senso o meno.
 
 === move_between_rooms(my_location)

+ {my_location == HubCentrale|| my_location == Biblioteca} [{~ Ti sposti in|Vai nel|Ti rechi al} giardino]
    ~ move_entity(PG, Giardino)
    -> hub_giardino

+ {my_location == HubCentrale} [{~ Ti sposti in|Vai nel|Ti rechi al} mausoleo]
    ~ move_entity(PG, Mausoleo)
    -> hub_mausoleo

+ {my_location == Giardino} [{~ Ti sposti in|Vai nella|Ti rechi alla} biblioteca]
    ~ move_entity(PG, Biblioteca)
    -> hub_biblioteca

+ {my_location == Giardino|| my_location == Mausoleo} [{~ Ti sposti in|Vai nel|Ti rechi al} hub centrale]
    ~ move_entity(PG, HubCentrale)
    -> hub_centrale
-    
-> DONE

