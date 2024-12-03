=== contenuti_inventario ===
    {doniTrovati != (): -> inventarietto|->vuoto}

    =inventarietto
    Hai con te {list_with_commas(doniTrovati)}.
    -> doveDevoTornare

    = vuoto
    L'inventario è vuoto
    -> doveDevoTornare






=== gestione_inventario ===
{debug: I doni trovati sono {doniTrovati}}
+ {doniTrovati has banana} Doni una banana
    ~ doniTrovati -= banana
    ~ doniDonati += banana
    {
    - storiaDue == InCorso:
        ~ statoInchiostroSpettroDue ++
        ~ statoInchiostroSpettroDue ++
        Spettro due ha apprezzato molto il tuo dono.
    - storiaUno == InCorso:
        ~ statoInchiostroSpettroUno ++
        ~ statoInchiostroSpettroUno ++
        ~ statoInchiostroSpettroUno ++
        Hai regalato a spettro uno la sua cosa preferita.
        //Questa occasione sblocca un pezzo speciale di storia
        ~ eventoSpecialeSpettroUno = true
    - storiaTre == InCorso:
        ~ statoInchiostroSpettroTre --
        Spettro tre è disgustato dal tuo dono.
    }
    
    ->->

+ {doniTrovati has mela} Doni una mela
    ~ doniTrovati -= mela
    ~ doniDonati += mela
    {
    - storiaUno == InCorso:
        ~ statoInchiostroSpettroUno --
        Spettro uno inizia a piangere
    - storiaDue == InCorso:
        Hai regalato a spettro due qualcosa che proprio non gli interessa
    - storiaTre == InCorso:
        ~ statoInchiostroSpettroTre ++
        Spettro tre apprezza mediamente il tuo dono.
    }
    ->->

+ {doniTrovati has pera} Doni una pera
    ~ doniTrovati -= pera
    ~ doniDonati += pera
    {
    - storiaUno == InCorso:
        ~ statoInchiostroSpettroUno --
        Spettro uno inizia a piangere
    - storiaDue == InCorso:
        Hai regalato a spettro due qualcosa che proprio non gli interessa
    - storiaTre == InCorso:
        ~ statoInchiostroSpettroTre ++
        Spettro tre apprezza mediamente il tuo dono.
    }
    ->->
    
+ {doniTrovati has fungo} Doni un fungo
    ~ doniTrovati -= fungo
    ~ doniDonati += fungo
    {
    - storiaUno == InCorso:
        ~ statoInchiostroSpettroUno --
        Spettro uno inizia a piangere
    - storiaDue == InCorso:
        Hai regalato a spettro due qualcosa che proprio non gli interessa
    - storiaTre == InCorso:
        ~ statoInchiostroSpettroTre ++
        Spettro tre apprezza mediamente il tuo dono.
    }
    -> doveDevoTornare
    
    //Se la lista è vuota
    + {doniTrovati == ()} Non hai nulla da donare
    + Mmm, per ora passo -> doveDevoTornare   
    + ->
    - 
-> doveDevoTornare
