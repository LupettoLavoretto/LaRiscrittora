/*

COSE DA INSERIRE E VALUTARE A LIVELLO DI STORIA
    * In giro ci sono pezzi di storia sulla mentore: chi è? Perché è qui?
    * Gli spettri che incontriamo sono altre persone bloccate?


COSE TECNICHE/STRUTTURALE DA DECIDERE E RISOLVERE
    * Come randomizzare i luoghi del giardino:
            -> le aree del giardino si aprono a blocchi 
    * Modi per proporre libri (con tag) nella biblioteca
    * Come gestire gli spettri (compaiono ovunque? unico file con randomizzazione fantasma, o più file?)
    * Mentore: ti offre un aiuto all'inizio, puoi rifiutarlo, ma puoi sempre chiedergli un aiuto/remind poi


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
  
    
OGGETTI
La struttura per assegnare un oggetto random è

    ~ temp dono = LIST_RANDOM(doniNonTrovati)
    Hai trovato {dono}
        ~ doniNonTrovati -= dono
        ~ doniTrovati += dono
    
    Per fare un eventuale debug:
    {debug: Doni non trovati: {doniNonTrovati}}
    {debug: Doni trovati:{doniTrovati}}
    {debug: Doni donati:{doniDonati}}
    
    Se faccio l'apertura per tier, è possibile che mi servano tre liste di oggetti separati (primo, secondo, terzo tier). Per non fare un lavoro infinito possono esserci delle corrispondenze dirette, per cui comunque un'area (es: la prima che apro) mi dà solo elementi della prima lista (che coincide con la lista di doni da fare al primo spettro/tutorial). Poi si aprono altre due o tre aree, e lì troverò solo le cose del secondo tier, ovvero dei successivi tre spettri, e via di seguito.
    
*/