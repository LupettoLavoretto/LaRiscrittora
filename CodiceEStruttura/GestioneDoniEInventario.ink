//Liste per la gestione dei doni agli spettri (e al mentore?)
LIST doni = mela, pera, fungo, banana
VAR doniNonTrovati = (fungo)
VAR doniTrovati = (banana, mela, pera)
VAR doniDonati = ()


//Gestione dell'inchiostro per i vari spettri. Nomi e valori sono temporanei. L'idea per ora è: se sono su Scarso, posso fare solo una scelta forte. Con Normale, due e via di seguito. Ogni scelta mi scala indietro nella lista di stati.
LIST statoInchiostro = Vuoto, Scarso, Normale, Medio, Altissimo
VAR statoInchiostroSpettroUno = Scarso
VAR statoInchiostroSpettroDue = Scarso
VAR statoInchiostroSpettroTre = Scarso

//Formula per tradurre la quantità di inchiostro in numeri

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
        Hai quattro azioni forti a disposizione.
    - else:
        Errore
}
->->