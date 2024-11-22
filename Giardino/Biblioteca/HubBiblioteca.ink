=== hub_biblioteca ===
~ temp my_location = entity_location(PG)
//Qui avremo qualche info generica e poi la possibilità di leggerci qualcosa
Sei in biblioteca

//Per donare un oggetto alla personaggia
{debug: Doni non trovati: {doniNonTrovati}}
{debug: Doni trovati:{doniTrovati}}
{debug: Doni donati:{doniDonati}}
~ temp dono = LIST_RANDOM(doniNonTrovati)
Hai trovato {dono}
    ~ doniNonTrovati -= dono
    ~ doniTrovati += dono
{debug: Doni non trovati: {doniNonTrovati}}
{debug: Doni trovati:{doniTrovati}}
{debug: Doni donati:{doniDonati}}

    <- move_between_rooms(my_location)
    <- mentore
    + Leggi un libro
    -
    
-> hub_biblioteca