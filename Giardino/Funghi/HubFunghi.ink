=== hub_funghi ===
~ temp my_location = entity_location(PG)
    TODO: è possibile che queste tre cose possano venire chiamate in una funzione temporale? O in qualcosa di accorpato? O in realtà, più plausibilmente, in rapporto al "main"
    -> random_luogo_mentore ->
    -> comparsa_anime ->
    -> randomizzazione_dono_luoghi ->

    <- move_between_rooms(my_location)
    <- mentore
    <- contenuti_inventario
    
    -
    
{
    - inCrescita:
        ->cura
    - else:
        -> pre_test
    
}


=== pre_test
    {~ In questo momento, l'orto è vuoto|Non c'è nulla in crescita|Ci sei solo tu, coi tuoi pensieri}.
    + [Vuoi elaborare qualcosa di nuovo]
        -> test_coltivazioni
    + [Te ne vai]
        -> main


=== cura
    Ti prendi cura della serra.
    {~ L'aria sembra più dolce oggi|Da qualche parte, tra le foglie, qualcosa canta|Piccole luci sfarfallano sopra il terreno}.
    TODO: inserire stato del fungo in corso.
    + [Te ne vai]
    -> main