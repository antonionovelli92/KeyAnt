# KeyAnt 0.6.68 · Pannelli, gesti e materiali

## Calendario e barra degli strumenti

Gesti e strumenti → Pannelli laterali → Gesto del calendario offre **Dalla barra delle icone**: trascinare verso destra dalla prima icona visibile a sinistra. Il calendario deve essere abilitato. Il gesto aziona lo stesso pannello che segue il dito, non una seconda schermata. In questa modalità ?123 e ABC tornano a gestire normalmente i cambi di livello. Le opzioni precedenti Tieni premuto e trascina e Swipe immediato restano disponibili; la scelta predefinita non cambia. Non viene aggiunto un gesto dei numeri all'estremità destra della barra.

La modalità con attesa non abbandona più il gesto se il dito inizia a muoversi nella direzione corretta prima dei 150 ms. La hitbox iniziale considera la correzione verticale del rilevatore della tastiera. Tocchi, pressioni lunghe, movimenti verticali e direzione contraria mantengono il percorso normale; dopo l'acquisizione di uno swipe il pulsante sottostante riceve CANCEL, evitando un doppio comando.

Due interruttori distinti, entrambi attivi per impostazione predefinita:

- **Swipe verso gli strumenti**: dalla freccia dei suggerimenti alla barra delle icone.
- **Swipe verso i suggerimenti**: dall'ultima icona visibile alla riga delle parole.

L'ultimo comando viene individuato dalla sua area realmente visibile, anche se è personalizzato o la barra contiene altre icone scorrevoli. Disattivare lo swipe non disattiva il normale tocco. I controlli condividono le stesse preferenze in Barra delle icone, Pannelli laterali e Animazioni; la ricerca presenta un solo risultato per ciascuno. Il calendario dalla barra è indipendente da entrambi gli interruttori.

## Fold e pillole

**Calendario affiancato sul Fold orizzontale**, inizialmente disattivo, è distinto dall'affiancamento dei numeri. Richiede schermo aperto, orientamento orizzontale, tastiera unita e spazio sufficiente. In questa configurazione il calendario resta aperto mentre si scrive. Il gesto inverso sul pannello lo richiude; split e cambi di geometria azzerano il pannello e la traslazione precedente, evitando di riusare coordinate della disposizione precedente.

L'icona contestuale cede gradualmente la propria larghezza alla pillola aperta. La X ripristina l'icona nello stesso spazio e conserva il contesto già gestito dal riconoscimento. Nascondere o ricreare la tastiera interrompe la transizione e ripristina le dimensioni. Non cambia la logica di salvataggio, conferma, Undo, destinazione o apertura automatica scelta dall'utente.

## Materiali Disegno

Le varianti **Android vetro blu, Essenziale e Xbox** ora usano i materiali, colori e inchiostri dei temi originali, con pareti e corsa dei tasti China. Il popup della lettera usa direttamente la superficie originale, compresi i riflessi. Si aggiungono **China · Fumé e Perla, China · Sapphire, China · Heritage grey, China · Manhattan e China · Hinata** nello stesso stile. China originale resta nella sua posizione. I temi derivati sono disponibili anche alle superfici coordinate e al Maker; i colori personalizzati del Maker hanno precedenza sul preset.

## Presentazione e impostazioni

Alla Classica, Manopola, Carosello e Solo quando serve si aggiungono sei alternative opzionali: **Scomparsa morbida, Velo, Nastro, Ventaglio, Dock e Onda**. La manopola ha un disegno circolare dedicato e icone con dimensioni minime definite; Nastro e Ventaglio raccolgono i comandi nella capsula, Dock varia la scala vicino al centro e Onda introduce i comandi in sequenza. Le modalità automatiche ripristinano la riga quando necessaria. Ordine, dispatcher e preferiti non vengono riscritti.

La scelta della visualizzazione include un'anteprima interattiva separata dalla riga di selezione; provarla non seleziona automaticamente la modalità né memorizza l'ultimo comando. I tre gesti hanno una dimostrazione animata. L'anteprima di un effetto RGB mostra un'intensità leggibile anche se le luci della tastiera sono spente, senza alterare l'intensità reale.

**Disattiva trasparenze**, **RGB coordinato** e **Spegni RGB** sono comandi rapidi sotto il catalogo temi. L'interruttore di solidità usa un override: non modifica i valori di opacità salvati e disattivandolo li ripristina. Spaziatura delle schede e cambi di contenuto vengono uniformati. Non viene cambiato il compromesso iniziale tra icone e suggerimenti, sul quale l'utente non aveva ancora deciso.

## Verifica e dati

Consultare VERIFICA-0.6.68.md e TEST-RESULTS-0.6.68.json per i risultati effettivi, non le note delle release precedenti. Nessuna modifica ai permessi, OAuth, notifiche, raccolta dati o motore di correzione in questa revisione. Le prove automatiche non certificano gli FPS sul telefono reale. Il progetto sorgente e la cronologia vanno conservati senza chiavi di firma o registrazioni personali.
