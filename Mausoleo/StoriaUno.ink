=== lapide_uno ===
    //opzione se non hai mai esplorato questa storia, e se non ci sono storie attive
    + {not (storiaUno == InCorso or storiaUno == Conclusa) and not (storiaDue == InCorso or storiaTre == InCorso)} Potresti conoscere la storia della prima lapide, {effettivoStatoSpettroUno}
        -> storia_uno
    
    //opzione se c'è un'altra storia attiva
    + {storiaDue == InCorso or storiaTre == InCorso or storiaUno == Conclusa} La prima lapide appartiene a {effettivoStatoSpettroUno} -> hub_mausoleo
    
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
    + {doniTrovati != ()} Offri un dono allo spettro e inizi la sua storia
        -> gestione_inventario -> capitolo_uno
    + ->
    {doniTrovati == (): Non parlo senza un dono adeguato! ->hub_mausoleo}       


    //queste opzioni poi non saranno scelte dirette, ma risultati delle scelte fatte durante il gioco
    = capitolo_uno
        Dopo il tuo dono, la quantità di inchiostro a disposizione è {statoInchiostroSpettroUno}.
             -> azioniInchiostro ->
             
            + {statoInchiostroSpettroUno != Vuoto} Posso compiere una azione speciale, che mi costerà tot inchiostro
                ~ statoInchiostroSpettroUno --
                Lo stato dell'inchiostro è ora a {statoInchiostroSpettroUno}
            + {statoInchiostroSpettroUno == Vuoto} Non posso più compiere azioni speciali
            + Domanda generica, senza impegno di inchiostro
            -
            Dico cose varie
            + {statoInchiostroSpettroUno!= Vuoto} Posso compiere una azione speciale, che mi costerà tot inchiostro
                ~ statoInchiostroSpettroUno --
                Lo stato dell'inchiostro è ora a {statoInchiostroSpettroUno}
            + {statoInchiostroSpettroUno == Vuoto} Non posso più compiere azioni speciali
            + Domanda generica, senza impegno di inchiostro
            - 
            Dico altre cose varie
            + {statoInchiostroSpettroUno!= Vuoto} Posso compiere una azione speciale, che mi costerà tot inchiostro
                ~ statoInchiostroSpettroUno --
                Lo stato dell'inchiostro è ora a {statoInchiostroSpettroUno}
            + {statoInchiostroSpettroUno == Vuoto} Non posso più compiere azioni speciali
            + Domanda generica, senza impegno di inchiostro
            -
            Finisco coi finali (che saranno dettati dalle scelte, non opzioni come ora)
         -> finali
     
     = finali    
            + Ho risolto la prima storia e attribuito allo spettro il primo nuovo stato
                ~ storiaUno = Conclusa
                ~ effettivoStatoSpettroUno = NuovoStatoUno
            + Ho risolto la prima storia e attribuito allo spettro il secondo nuovo stato
                ~ storiaUno = Conclusa
                ~ effettivoStatoSpettroUno = NuovoStatoDue        
            + {eventoSpecialeSpettroUno} Tastino perché hai sbloccato l'evento speciale
                -> evento_speciale
            + Non ho risolto la storia
            -
        -> hub_mausoleo
    
    
    = evento_speciale
        Sei finita nell'evento speciale
        ~ storiaUno = Conclusa
        -> hub_mausoleo
