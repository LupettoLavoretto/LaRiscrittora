//Per abilitare o meno il debug
VAR debug = false

//Nome giocatrice e pronomi
VAR nome = ""
LIST pronomi = maschili, femminili, neutri

//Lista di tutti i luoghi del gioco
LIST luoghi = Giardino, Mausoleo, Biblioteca, Falene, Funghi, Labirinto, Tisane, Sirene

//Lista delle personagge del gioco (quelle che hanno elementi di variabilità
LIST personagge = Mentore, PG

//Lista dei contenuti di un determinato luogo, in modo da tracciare chi è dove
VAR contenutoGiardino = (PG, Mentore)
VAR contenutoMausoleo = ()
VAR contenutoBiblioteca = ()
VAR contenutoFalene = ()
VAR contenutoFunghi = ()
VAR contenutoLabirinto = ()
VAR contenutoTisane = ()
VAR contenutoSirene = ()

//Variabili per la gestione della biblioteca
LIST libri = libroCeci, libroGabri, libroGreta, libroAnna
VAR libriLetti = ()
VAR libriX = (libroCeci, libroGabri, libroAnna)
VAR libriY = (libroCeci, libroGreta, libroAnna)
VAR libriZ = (libroGabri, libroGreta)
    //Libro che verrà proposto
    VAR libro = ()
    
//Variabili per tracciare i trigger warning. False = non è TW, posso mostrare quelle storie
VAR alcolismo = false
VAR abusi = true
VAR lutto = true