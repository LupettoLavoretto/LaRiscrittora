=== gestione_inventario ===
{debug: I doni trovati sono {doniTrovati}}
+ {doniTrovati has banana} Doni una banana
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
    ->->    
+ Mmm, per ora passo ->->   
+ ->
- 
->->
