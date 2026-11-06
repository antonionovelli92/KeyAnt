# KeyAnt 0.6.70 — checkpoint
Base: v0.6.69, d6079be3efced0d914e364183b64751882ced49b. Video utente 37411.mp4 esaminato (50,8s).

## Perimetro della richiesta
- Swipe icone→parole: ripristino, zona selezionabile ultime 1/2/3 icone, gesto e morbidezza configurabili; ritorno dalla sola freccia.
- Correggere perdita della geometria della barra dopo scrittura/ritorno; manopola meccanica, ventaglio migliore, nuove animazioni e integrazione Maker.
- Revisione Sharingan e altre sfere anime; teste stilizzate rotanti Luffy, Takemichi, Hinata; PIDDU rosa/Barbie/Sailor Moon/Hello Kitty/Kuromi; MacLaren’s e altri easter egg.
- Email con punto: prefisso breve e composizione intera, nessuna email codificata nel sorgente.
- Suggerimenti di nomi/termini fuori dizionario; memoria con peso della recenza; proteggere modalità privata e opzioni correzione nelle app.
- Segnalazione successiva: sostituzione accidentale del testo selezionato durante gesto a due dita; Ctrl+Z/Y devono annullare/ripristinare dove possibile. Verificare dispatch e tutela delle selezioni.
- Test, rendering, APK stessa firma, download normale, release con sorgenti e cronologia, note e rollback.

## Riscontri iniziali
EmailMemory.complete esclude prefissi <3 caratteri: a. non può agganciare un indirizzo conosciuto. Toolbar usa un vincolo di larghezza applicato dopo il layout: fragile durante riaggancio. I motivi AnimeOrbs non sono raggiunti dal caricatore BallMaps (asset precedenti hanno priorità).

## Stato implementazione
Codice applicativo salvato nel commit 183fc4c. Ramo locale work/0.6.70-toolbar-orbs-writing; checkpoint pubblico work/keyant-0.6.70. Dettagli e limiti in AGGIORNAMENTO-0.6.70.md.
264 casi distinti superati in 32 classi. Resta la verifica mirata della compatibilità del lessico con Android 8+, segnalata dal controllo NewApi e corretta sostituendo Stream.toList. APK in rigenerazione con la stessa firma.
Correzioni emerse durante la verifica: nomi con refuso nel prefisso; etichette delle sfere e continuità dei capelli sui lati; proprietà residue dell’animazione wave; icone fuori viewport escluse dal riconoscimento del bordo; fixture dei gesti ripetuti con downTime aggiornato a ogni nuovo gesto; sincronizzazione della selezione dopo Ctrl+Z/Y.
