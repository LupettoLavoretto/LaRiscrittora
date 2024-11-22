//Liste per la gestione dei doni agli spettri (e al mentore?)
LIST doni = mela, pera, fungo, banana, ocelot
VAR doniNonTrovati = (fungo, banana, mela, pera)
VAR doniTrovati = ()
VAR doniDonati = ()
VAR luoghiDono = ()

//Gestione dell'inchiostro per i vari spettri. Nomi e valori sono temporanei. L'idea per ora è: se sono su Scarso, posso fare solo una scelta forte. Con Normale, due e via di seguito. Ogni scelta mi scala indietro nella lista di stati.
LIST statoInchiostro = Vuoto, Scarso, Normale, Medio, Altissimo
VAR statoInchiostroSpettroUno = Scarso
VAR statoInchiostroSpettroDue = Scarso
VAR statoInchiostroSpettroTre = Scarso



//Formula per tradurre la quantità di inchiostro in valori espliciti
=== azioniInchiostro
VAR Inchiostro = ()
{
    - storiaUno == InCorso:
        ~ Inchiostro = statoInchiostroSpettroUno
    - storiaDue == InCorso:
        ~ Inchiostro = statoInchiostroSpettroDue
    - storiaTre == InCorso:
        ~ Inchiostro = statoInchiostroSpettroTre  
}

{Inchiostro:
    - Vuoto:
        Non hai inchiostro per lo spettro, dovrai trovare la tua strada da solo.
    - Scarso:
        Hai una azione forte a disposizione.
    - Normale:
        Hai due azioni forti a disposizione.
    - Medio:
        Hai tre azioni forti a disposizione.
    - Altissimo:
        Hai tre azioni forti a disposizione.
    - else:
        Errore
}
->->

//Funzione di randomizzazione dono nei luoghi
=== randomizzazione_dono_luoghi
{debug: Doni non trovati: {doniNonTrovati}}
{debug: Doni trovati:{doniTrovati}}
{debug: Doni donati:{doniDonati}}
{debug: Luoghi da cui hai già ricevuto un dono:{luoghiDono}}
~ temp luogoDono = entity_location(PG)
~ temp dono = LIST_RANDOM(doniNonTrovati)
{
    - luoghiDono has luogoDono: ->->
    - luoghiDono hasnt luogoDono:
        Hai trovato {dono}
        ~ doniNonTrovati -= dono
        ~ doniTrovati += dono
        ~ luoghiDono += luogoDono
    - else:
        Errore: non riesco a rintracciare il luogo
}

{debug: Doni non trovati: {doniNonTrovati}}
{debug: Doni trovati:{doniTrovati}}
{debug: Doni donati:{doniDonati}}
{debug: Luoghi da cui hai già ricevuto un dono:{luoghiDono}}
    

->->