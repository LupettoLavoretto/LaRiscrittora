=== anima_uno
{
- alcolismo == false:
    {
    - debug: alcolismo attivo, salto storia
    ->->
    }
}
//Se alcolismo attivo come trigger, salto la storia
{
    - not stitch_uno: -> stitch_uno
    - not stitch_due: -> stitch_due
    - not stitch_tre: -> stitch_tre
    - else: Sono finite le storie per la prima anima ->->
}

    = stitch_uno
        + Primo contenuto anima uno
    ->->
    
    = stitch_due
        + Secondo contenuto anima uno
    ->->
    
    = stitch_tre
        + Terzo contenuto anima uno
    ->->
