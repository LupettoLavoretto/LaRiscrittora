//Funzione per tracciare se una data entità si trova o meno in un determinato luogo

=== function entity_location(entity)
{
    - contenutoGiardino has entity:
        ~ return Giardino
    - contenutoMausoleo has entity:
        ~ return Mausoleo
    - contenutoBiblioteca has entity:
        ~ return Biblioteca
    - contenutoHubCentrale has entity:
        ~ return HubCentrale
    - contenutoFalene has entity:
        ~ return Falene
    - contenutoFunghi has entity:
        ~ return Funghi
    - contenutoLabirinto has entity:
        ~ return Labirinto
    - contenutoTisane has entity:
        ~ return Tisane   
        
    - else:
        DEBUG: error, cannot find {entity} anywhere!
        ~ return 0
}

//Funzione per spostare un'entità da un luogo a un altro
=== function move_entity(entity, destination)

~ temp CurrentLocation = entity_location(entity)
{CurrentLocation:
    - Giardino:
        ~ contenutoGiardino -= entity
    - Mausoleo:
        ~ contenutoMausoleo -= entity
    - Biblioteca:
        ~ contenutoBiblioteca -= entity
    - HubCentrale:
        ~ contenutoHubCentrale -= entity
    - Falene:
        ~ contenutoFalene -= entity
    - Funghi:
        ~ contenutoFunghi -= entity
    - Labirinto:
        ~ contenutoLabirinto -= entity
    - Tisane:
        ~ contenutoTisane -= entity

    - else:
        DEBUG: error, cannot understand location {CurrentLocation} while trying to move {entity} out.
}

{destination:
    - Giardino:
        ~ contenutoGiardino += entity
    - Mausoleo:
        ~ contenutoMausoleo += entity
    - Biblioteca:
        ~ contenutoBiblioteca += entity
    - HubCentrale:
        ~ contenutoHubCentrale += entity
    - Falene:
        ~ contenutoFalene += entity
    - Funghi:
        ~ contenutoFunghi += entity
    - Labirinto:
        ~ contenutoLabirinto += entity
    - Tisane:
        ~ contenutoTisane += entity        
    
    - else:
        DEBUG: error, cannot understand location {destination} while trying to move {entity} in.
}

// (sempre che lo faccia in futuro) se è la PG a spostarsi, allora parte anche il cambio dello scenario.
/*{entity == PG:
  @moveTo roomName:{destination}
}*/

//Funzione per capire se due entità sono nello stesso luogo
=== function are_two_entities_together(entity1, entity2)
~ return entity_location(entity1) == entity_location(entity2)


//Funzione per avvicinare una PNG alla personaggia protagonista
 === function move_first_entity_to_second_entity_location(entity1,entity2)
    ~ temp entity2_location = entity_location(entity2)
    ~ move_entity(entity1, entity2_location)
    

    
    