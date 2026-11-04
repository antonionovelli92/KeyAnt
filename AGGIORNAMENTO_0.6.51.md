# KeyAnt 0.6.51 · Materie d’autore e azioni dalla frase

Aggiornamento installabile sopra la 0.6.50, senza disinstallazione e senza azzerare memoria o calibrazione.

## Sei temi costruiti sui dettagli

In **Aspetto → Temi → Materie d’autore** trovi Letterpress Cotone, Terminal Fosforo, Riviera Resina marina, Opale Iridescenza, Arcade Rubino e Rame Spazzolato. Ogni finitura ha una geometria e un trattamento propri: serif blu su avorio granuloso, cornici al fosforo, resina lucida con spiaggia, riflessi opalescenti, calotte arcade o metallo spazzolato. Chiaro/scuro cambia il fondo mantenendo l’identità dei materiali.

Anteprime e Maker usano gli stessi materiali della tastiera. La base parte al 97% di opacità; tasti normali e funzione restano separati nelle regolazioni. La pressione muove la superficie e il bordo luminoso; le trame vengono generate e riutilizzate, senza accessi di rete mentre scrivi.

## La freccia diventa un’azione

Nella barra dei suggerimenti, senza aggiungere spazio:

- `Ricordami di comprare il pane` → promemoria.
- `Segna sul calendario cena domani alle 20` → evento.
- `Chiama +39…` → telefono. Con un nome si sceglie il contatto.

Tocca l’icona per controllare il contenuto. Trascinala per aprire gli strumenti come prima. Le tre parole suggerite mantengono il loro posto. L’icona torna freccia a fine frase, dopo un cambio d’argomento riconosciuto, oltre 24 parole/180 caratteri oppure dopo 20 secondi.

**Gesti e strumenti → Azioni dalla frase** permette di disattivare la funzione e scegliere le app. Si riconoscono comandi espliciti in italiano, non qualsiasi frase naturale. Il testo viene analizzato solo localmente, dopo una pausa breve della digitazione; non viene aggiunto a una cronologia dei comandi. Password, incognito, campi con divieto di apprendimento, indirizzi e selezioni sono esclusi.

**Calendar:** apre un evento compilato da verificare e salvare. Giorno e ora riconosciuti si possono modificare; se sono ambigui, devi sceglierli. Il telefono apre il tastierino: non effettua chiamate da solo.

**Google Tasks:** il percorso predefinito è **Copia e apri Tasks**. Dopo la tua conferma copia il testo e apre l’app; incolli e imposti la scadenza in Tasks. Questa versione non crea attività tramite API Google. Le altre app ricevono il testo tramite il selettore Android di condivisione.

## Scrittura e ripristino

Ridotta la costruzione ripetuta di espressioni regolari nel livello di tocco e calibrazione. Soglie, zone centrali, hitbox, logica del correttore e memoria personale restano quelle della 0.6.50: nessuna promessa di aumento misurato della precisione senza prova su telefono.

Il tag `baseline-0.6.50` e `maintenance/rollback-0651-writing` conservano il punto di partenza. Le nuove azioni si spengono separatamente. I precedenti ripristini delle pillole restano disponibili.

## Verifica

Risultati e limiti sono documentati in `VERIFICA-0.6.51.md`. Riferimenti video e documentazione ufficiale: `RICERCA-0.6.51.md`. I temi sono adattamenti per KeyAnt, non repliche certificate pixel per pixel.
