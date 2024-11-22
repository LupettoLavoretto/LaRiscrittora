//Per abilitare o meno il debug
VAR debug = false

//Nome giocatrice
VAR nome = ""

//Lista di tutti i luoghi del gioco
LIST luoghi = Giardino, Mausoleo, Biblioteca, HubCentrale, Falene, Funghi, Labirinto, Tisane, Sirene

//Lista delle personagge del gioco (quelle che hanno elementi di variabilità
LIST personagge = Mentore, PG

//Lista dei contenuti di un determinato luogo, in modo da tracciare chi è dove
VAR contenutoGiardino = ()
VAR contenutoMausoleo = ()
VAR contenutoBiblioteca = ()
VAR contenutoHubCentrale = (PG, Mentore)
VAR contenutoFalene = ()
VAR contenutoFunghi = ()
VAR contenutoLabirinto = ()
VAR contenutoTisane = ()