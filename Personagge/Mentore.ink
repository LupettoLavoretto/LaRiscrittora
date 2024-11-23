=== mentore ===
//Per semplificare la vita, il mentore probabilmente è l'unico elemento responsivo di storia e contesto. Ci dirà cose diverse a seconda della storia che stiamo affrontando, o del luogo in cui lo incontriamo. L'idea è comunque di rimanere sempre nel semplice.
+ {are_two_entities_together(Mentore, PG)} [{Parli col mentore|Interroghi il mentore}] -> parlareColMentore
    
     
-> DONE



=== parlareColMentore
-> storylets_mentore ->
Il mentore ti dice cose
     + Rispondi
     + {storiaUno == InCorso or storiaDue == InCorso or storiaTre == InCorso} Chiedi un consiglio legato alla storia in corso -> consigli_storie
     + {tutorial} Chiedi di ripetere il tutorial -> indicazioni
     + Abbandoni la conversazione -> andarsene
     -

->->



//Qui tratto il mentore come un luogo, così che possa uscire poi dalla conversazione
=== andarsene
~ temp my_location = entity_location(PG)
<- move_between_rooms(my_location)

-> DONE

