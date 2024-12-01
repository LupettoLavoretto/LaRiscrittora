//Variabili legate agli spettri del mausoleo
// Lista con i possibili stati delle variabili legate alle contraddizioni
LIST statoStorie = NonIniziata, InCorso, Conclusa

VAR storiaUno = NonIniziata
VAR storiaDue = NonIniziata
VAR storiaTre = NonIniziata
VAR storiaQuattro = NonIniziata
VAR storiaCinque = NonIniziata
VAR storiaSei = NonIniziata
VAR storiaSette = NonIniziata

//Lista denominatori dei singoli spettri
//Questi denominatori poi verranno adattati al singolo spettro
//C'è la possibilità che serva una qualche forma di conversione, es: variabile compatta, quindi LaInsicura, e poi formula che stampi La Insicura.
LIST possibiliStatiSpettroUno = StatoDefault, NuovoStatoUno, NuovoStatoDue, NuovoStatoTre
VAR effettivoStatoSpettroUno = StatoDefault

LIST possibiliStatiSpettroDue = StatoDefaultDue, NuovoStatoUnoDue, NuovoStatoDueDue, NuovoStatoTreDue
VAR effettivoStatoSpettroDue = StatoDefaultDue

LIST possibiliStatiSpettroTre = StatoDefaultTre, NuovoStatoUnoTre, NuovoStatoDueTre, NuovoStatoTreTre
VAR effettivoStatoSpettroTre = StatoDefaultTre

LIST possibiliStatiSpettroQuattro = StatoDefaultQuattro, NuovoStatoUnoQuattro, NuovoStatoDueQuattro, NuovoStatoTreQuattro
VAR effettivoStatoSpettroQuattro = StatoDefaultQuattro

LIST possibiliStatiSpettroCinque = StatoDefaultCinque, NuovoStatoUnoCinque, NuovoStatoDueCinque, NuovoStatoTreCinque
VAR effettivoStatoSpettroCinque = StatoDefaultCinque

LIST possibiliStatiSpettroSei = StatoDefaultSei, NuovoStatoUnoSei, NuovoStatoDueSei, NuovoStatoTreSei
VAR effettivoStatoSpettroSei = StatoDefaultSei

LIST possibiliStatiSpettroSette = StatoDefaultSette, NuovoStatoUnoSette, NuovoStatoDueSette, NuovoStatoTreSette
VAR effettivoStatoSpettroSette= StatoDefaultSette

//Variabili per verificare se c'è o meno l'accesso all'evento speciale di un singolo spettro
VAR eventoSpecialeSpettroUno = false
VAR eventoSpecialeSpettroDue = false
VAR eventoSpecialeSpettroTre = false
VAR eventoSpecialeSpettroQuattro = false
VAR eventoSpecialeSpettroCinque = false
VAR eventoSpecialeSpettroSei = false
VAR eventoSpecialeSpettroSette = false

//Liste per la gestione dei doni agli spettri
//Nota: doniNonTrovati sono i doni che verranno dati da eventi, anime etc.
//doniNonTrovatiLuogo sono quelli assegnati invece in modo randomico da un luogo
LIST doni = mela, pera, fungo, banana, ocelot
VAR doniNonTrovati = (ocelot)
VAR doniNonTrovatiLuogo = ()
VAR doniTrovati = (fungo, banana, mela, pera)
VAR doniDonati = ()
VAR luoghiDono = ()

//Gestione dell'inchiostro per i vari spettri. Nomi e valori sono temporanei. L'idea per ora è: se sono su Scarso, posso fare solo una scelta forte. Con Normale, due e via di seguito. Ogni scelta mi scala indietro nella lista di stati.
LIST statoInchiostro = Vuoto, Scarso, Normale, Medio, Altissimo
VAR statoInchiostroSpettroUno = Scarso
VAR statoInchiostroSpettroDue = Scarso
VAR statoInchiostroSpettroTre = Scarso
VAR statoInchiostroSpettroQuattro = Scarso
VAR statoInchiostroSpettroCinque = Scarso
VAR statoInchiostroSpettroSei = Scarso
VAR statoInchiostroSpettroSette = Scarso




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
    - storiaQuattro == InCorso:
        ~ Inchiostro = statoInchiostroSpettroQuattro
    - storiaCinque == InCorso:
        ~ Inchiostro = statoInchiostroSpettroCinque
    - storiaSei== InCorso:
        ~ Inchiostro = statoInchiostroSpettroSei 
    - storiaSette == InCorso:
        ~ Inchiostro = statoInchiostroSpettroSette     
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
~ temp luogoDono = entity_location(PG)
~ temp dono = LIST_RANDOM(doniNonTrovatiLuogo)
~ temp dice_roll = RANDOM(1, 6)

{debug: Doni non trovati: {doniNonTrovatiLuogo}}
{debug: Doni trovati: {doniTrovati}}
{debug: Doni donati: {doniDonati}}
{debug: Luoghi da cui hai già ricevuto un dono: {luoghiDono}}
{debug: Valore dado: {dice_roll}}



{
    - dice_roll > 3: ->->
    - else:
        {
        - luoghiDono has luogoDono: ->->
        - luoghiDono hasnt luogoDono:
            Hai trovato {dono}
            ~ doniNonTrovatiLuogo -= dono
            ~ doniTrovati += dono
            ~ luoghiDono += luogoDono
        - else:
            Errore: non riesco a rintracciare il luogo
        }
    
}



{debug: Doni non trovati: {doniNonTrovatiLuogo}}
{debug: Doni trovati: {doniTrovati}}
{debug: Doni donati: {doniDonati}}
{debug: Luoghi da cui hai già ricevuto un dono: {luoghiDono}}
    

->->