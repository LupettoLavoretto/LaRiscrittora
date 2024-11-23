=== mentore ===
//Per semplificare la vita, il mentore probabilmente è l'unico elemento responsivo di storia e contesto. Ci dirà cose diverse a seconda della storia che stiamo affrontando, o del luogo in cui lo incontriamo. L'idea è comunque di rimanere sempre nel semplice.
+ {are_two_entities_together(Mentore, PG)} [{Parli col mentore|Interroghi il mentore}] -> parlareColMentore
    
     
-> DONE



=== parlareColMentore
-> storylets_mentore ->
Il mentore ti dice cose
     + Rispondi
     + Chiedi aiuto (opzione responsiva in base alla storia che hai in corso?)
     + Abbandoni la conversazione -> andarsene
     -

-> DONE



//Qui tratto il mentore come un luogo, così che possa uscire poi dalla conversazione
=== andarsene
~ temp my_location = entity_location(PG)
<- move_between_rooms(my_location)

-> DONE


=== random_luogo_mentore
//NOTA: IL MENTORE NON COMPARE MAI NEL LABIRINTO, QUELLO è SPAZIO PRIVATO
//Ho una lista di luoghi che svuoto e poi resetto, così che sia percepibile come effettivamente randomica

{
    - luoghiIncontroMentore != ():
        -> runDom
    - else:
        ~ luoghiIncontroMentore = (Giardino, Mausoleo, Biblioteca, HubCentrale, Falene, Funghi, Tisane, Sirene)
        ~ luoghiMentoreIncontrato = ()
    {debug: la lista dei luoghi era vuota, ma ora contiene di nuovo tutto (check) {luoghiIncontroMentore}}
        -> runDom
}

= runDom
VAR mentore_location = ()
~ mentore_location = LIST_RANDOM(luoghiIncontroMentore)
{mentore_location:
    - Giardino:
        ~ move_entity(Mentore, Giardino)
        ~ luoghiIncontroMentore -= Giardino
        ~ luoghiMentoreIncontrato += Giardino
    - Mausoleo:
        ~ move_entity(Mentore, Mausoleo)
        ~ luoghiIncontroMentore -= Mausoleo
        ~ luoghiMentoreIncontrato += Mausoleo
    - Biblioteca:
        ~ move_entity(Mentore, Biblioteca)
        ~ luoghiIncontroMentore -= Biblioteca
        ~ luoghiMentoreIncontrato += Biblioteca
    - HubCentrale:
        ~ move_entity(Mentore, HubCentrale)
        ~ luoghiIncontroMentore -= HubCentrale
        ~ luoghiMentoreIncontrato += HubCentrale
    - Falene:
        ~ move_entity(Mentore, Falene)
        ~ luoghiIncontroMentore -= Falene
        ~ luoghiMentoreIncontrato += Falene
    - Funghi:
        ~ move_entity(Mentore, Funghi)
        ~ luoghiIncontroMentore -= Funghi
        ~ luoghiMentoreIncontrato += Funghi
    - Tisane:
        ~ move_entity(Mentore, Tisane)
        ~ luoghiIncontroMentore -= Tisane
        ~ luoghiMentoreIncontrato += Tisane
    - Sirene:
        ~ move_entity(Mentore, Sirene)
        ~ luoghiIncontroMentore -= Sirene
        ~ luoghiMentoreIncontrato += Sirene
}
{debug: il mentore si trova in {mentore_location}, la lista aggiornata dei luoghi che deve ancora visitare è: {luoghiIncontroMentore}, quella dei luoghi visitati è: {luoghiMentoreIncontrato}}


->->