/*

COSE DA INSERIRE E VALUTARE A LIVELLO DI STORIA
    * In giro ci sono pezzi di storia sulla mentore: chi è? Perché è qui?
    * Gli spettri che incontriamo sono altre persone bloccate?


COSE TECNICHE/STRUTTURALE DA DECIDERE E RISOLVERE
    * Modi per proporre libri (con tag) nella biblioteca
    * Come gestire gli spettri (compaiono ovunque? unico file con randomizzazione fantasma, o più file?)
    * Mentore: ti offre un aiuto all'inizio, puoi rifiutarlo, ma puoi sempre chiedergli un aiuto/remind poi
    * Settaggio genere giocatrice, nome, pronomi
        -> nome random, no Unity


  
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
    
    La randomizzazione è solo per i luoghi, e vale solo una volta. Altri oggetti compaiono con interazioni specifiche (certi spiriti, il mentore, tisane, i funghi e via di seguito)
    
AREE DEL GIARDINO
Non si aprono in modo randomico, ma in modo strutturato, ragionando per tier.
Es:
    -> Tier uno: tutorial. Si apre il giardino con funghi e fiori. Trovo tre oggetti utili per la prima storia: uno dal mentore, uno nel giardino stesso (se osservo il mondo dalla panchina), l'altro collaborando con un fungo o un fiore o che.
    -> Tier due: si apre lo spazio delle falene e il labirinto
    -> Tier tre: si apre il resto: tisane, biblioteca, canzoni

Nell'ottica di una maggiore economia, i tier non sono variabili, ma sono dettati dallo stato delle storie degli spettri.
    -> Tier uno: quello iniziale
    -> Tier due: si sblocca quando storiaUno == Conclusa
    -> Tier tre: si sblocca quando storiaDue, Tre e Quattro sono Concluse
Per comodità ora nel prototipo i tier saranno uno per Spettro

TOMBE
Si aprono in tre blocchi, definendo di conseguenza anche i Tier delle aree del giardino.

    -> Tier uno: quello iniziale.
    -> Tier due: si sblocca quando storiaUno == Conclusa
    -> Tier tre: si sblocca quando storiaDue, Tre e Quattro sono Concluse

Le sette tombe saranno sempre e comunque visibili e accessibili. Se non sono sbloccate, ci diranno solo l'epitaffio.    
    
Una volta che decidi di sbloccare una tomba, segui solo quella storia. Con una logica tipo:
    -> arrivo al mausoleo
    -> scelgo quale storia avviare
    -> ascolto la ministoria
    -> a quel punto le lapidi mi danno tutte una informazione generica, ma rimane presente e interagibile la fantasma della storia che sto seguendo.
    -> risolvo il suo percorso
    -> il nome sulla sua tomba si aggiorna
    -> posso interagire di nuovo con le altre lapidi, e avviare una storia tra quelle disponibili

    
    
    
*/