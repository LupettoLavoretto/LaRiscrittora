//Variabili legate agli spettri del mausoleo
// Lista con i possibili stati delle variabili legate alle contraddizioni
LIST statoStorie = NonIniziata, InCorso, Conclusa

VAR storiaUno = NonIniziata
VAR storiaDue = NonIniziata
VAR storiaTre = NonIniziata

//Lista denominatori dei singoli spettri
LIST possibiliStatiSpettroUno = StatoDefault, NuovoStatoUno, NuovoStatoDue, NuovoStatoTre
VAR effettivoStatoSpettroUno = StatoDefault

LIST possibiliStatiSpettroDue = StatoDefaultDue, NuovoStatoUnoDue, NuovoStatoDueDue, NuovoStatoTreDue
VAR effettivoStatoSpettroDue = StatoDefaultDue

LIST possibiliStatiSpettroTre = StatoDefaultTre, NuovoStatoUnoTre, NuovoStatoDueTre, NuovoStatoTreTre
VAR effettivoStatoSpettroTre = StatoDefaultTre