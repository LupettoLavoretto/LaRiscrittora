//Per abilitare o meno il debug
VAR debug = false

//Lista di tutti i luoghi del gioco
LIST luoghi = Giardino, Mausoleo, Biblioteca, HubCentrale, Falene, Funghi, Labirinto, Tisane

//Lista delle personagge del gioco (quelle che hanno elementi di variabilità
LIST personagge = Mentore, PG

//Lista dei contenuti di un determinato luogo, in modo da tracciare chi è dove
VAR contenutoGiardino = ()
VAR contenutoMausoleo = (Mentore)
VAR contenutoBiblioteca = ()
VAR contenutoHubCentrale = (PG)
VAR contenutoFalene = ()
VAR contenutoFunghi = ()
VAR contenutoLabirinto = ()
VAR contenutoTisane = ()