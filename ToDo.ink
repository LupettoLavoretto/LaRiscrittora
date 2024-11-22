/*

COSE DA INSERIRE E VALUTARE A LIVELLO DI STORIA
    * In giro ci sono pezzi di storia sulla mentore: chi è? Perché è qui?
    * Gli spettri che incontriamo sono altre persone bloccate?


COSE TECNICHE/STRUTTURALE DA DECIDERE E RISOLVERE
    * Decidere come "locckare" le tombe
    * Strutturare il discorso "oggetti" (disponibili in più punti, ma una sola volta)
    * Come randomizzare i luoghi del giardino
    * Modi per proporre libri (con tag) nella biblioteca
    * Come gestire gli spettri (compaiono ovunque? unico file con randomizzazione fantasma, o più file?)


TOMBE
In merito all'ordine di comparsa, ci sono un paio di punti aperti:
    * Se abbia senso all'inizio renderne solo una accessibile (e quale) da strutturare come tutorial, con la mentore che ci segue e ci guida.
    * Se, tutorial o meno, saranno sbloccate tutte da subito o gradualmente, o a blocchi (un po' come in ITS, dove arrivano magari tre storie, poi due, e poi una).
A prescindere da questo, una cosa su cui voglio rimanere è: una volta che avvii quella storia, segui solo quella storia. Con una logica tipo:
    -> arrivo al mausoleo
    -> scelgo quale storia avviare
    -> ascolto la ministoria
    -> a quel punto le lapidi mi danno tutte una informazione generica, ma rimane presente e interagibile la fantasma della storia che sto seguendo.
    -> risolvo il suo percorso
    -> il nome sulla sua tomba si aggiorna
    -> posso interagire di nuovo con le altre lapidi, e avviare una storia tra quelle disponibili
    

Decidere se questa cosa è dettata nel knot "tombe" o prima, nelle scelte possibili nel mausoleo (es: "esplori una delle tombe" se non hai storie attive, "parli con XXX" se hai la sua storia attiva (e in questo caso potrei usare le variabili che attivano la storia per dire che ok, c'è il fantasma. Tra l'altro potrei creare degli stati per queste variabili, un po' come in loop (contraddizione non trovata, scelta uno, scelta due, dubbio), dove metto "storia non letta" e quindi la tomba dice una cosa, "storia attiva" e ne dice un'altra e "storia risolta" con l'aggettivo che deriva dalle nostre scelte.

*/