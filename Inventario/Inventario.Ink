=== gestione_inventario ===
+ {doniTrovati == banana} Doni una banana
    ~ doniTrovati -= banana
    ~ doniDonati += banana
    {
    - storiaUno == InCorso:
        ~ statoInchiostroSpettroUno ++
        ~ statoInchiostroSpettroDue ++
        Spettro uno ha apprezzato molto il tuo dono.
    - storiaDue == InCorso:
        ~ statoInchiostroSpettroDue ++
        ~ statoInchiostroSpettroDue ++
        ~ statoInchiostroSpettroDue ++
        Hai regalato a spettro due la sua cosa preferita.
    - storiaTre == InCorso:
        ~ statoInchiostroSpettroTre --
        Spettro tre è disgustato dal tuo dono.
    }
    
    ->->

+ {doniTrovati == mela} Doni una mela
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
+ Mmm, per ora passo ->->   
+ ->
- 
->->
