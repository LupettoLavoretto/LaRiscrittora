=== hub_funghi ===
~ temp my_location = entity_location(PG)
-> random_luogo_mentore ->
-> comparsa_anime ->


//Questo è il vero e proprio giardino, devo crescono funghi, muffe, fiori, licheni reali e inventati. Il bonus potrebbe essere che alcune di queste cose poi mi danno doni per gli spettri o elementi per la zona delle tisane.
Ti prendi cura dei funghi
-> randomizzazione_dono_luoghi ->

    <- move_between_rooms(my_location)
    <- mentore
    + Ti prendi cura dei funghi
    + {doniTrovati != ()} Controlla li lista di oggetti che hai con te
        -> contenuti_inventario
    -
    
-> hub_funghi    
-> hub_funghi

=== gestione_funghi
Check se funghi in crescita o meno.
Se non in crescita, posso metterne uno nuovo

->-> in crescita|Ci sei solo tu, coi tuoi pensieri}.
    + [Vuoi elaborare qualcosa di nuovo]
        -> test_coltivazioni
    + [Te ne vai]
        -> main


=== cura
    Ti prendi cura del giardino.
    {~ L'aria sembra più dolce oggi|Da qualche parte, tra le foglie, qualcosa canta|Piccole luci sfarfallano sopra il terreno}.
    + [Te ne vai]
    -> main
