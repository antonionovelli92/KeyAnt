# KeyAnt 0.6.61

## Tastierino numerico

Rimosso il titolo Numeri. La griglia occupa l’intera altezza del pannello: 1–9, virgola/0/punto, quindi Cancella/Spazio/A capo. Cancella richiude come prima; Spazio mantiene il pannello. A capo inserisce una nuova riga, senza trasformarsi in Invio messaggio/Cerca. L’ultimo tasto è personalizzabile da Gesti e strumenti → Pannelli laterali: Appunti, Screenshot, GIF, Traduci, voce, SafeInCloud, Emoji o strumenti. I comandi riusano il normale percorso della barra, con i relativi permessi e limiti. Nessuna X ridondante nel pannello numerico; rientro con gesto opposto, lettera o Cancella. Le scelte calendario/numeri restano indipendenti.

## Spaziatrice e split

La preview di apertura della 0.6.60 associava l’unica spaziatrice soltanto al tasto split più vicino: l’altra metà compariva al cambio definitivo del layout. Con Fusione spaziatrice attiva vengono ora disegnate entrambe le metà di destinazione fin dal primo frame, ritagliate al centro e interpolate insieme. Il renderer è quello reale del tema, incluso Disegno · China. La ricomposizione conserva il ritaglio che evita sovrapposizioni. Hitbox e inserimento restano quelli del layout reale.

Gesti e strumenti → Gesti e selezione → **Split con due dita anche in verticale**, spento inizialmente, autorizza il gesto sul telefono chiuso in verticale. Non divide da solo: abilita il gesto. Il risultato usa il profilo compatto e non cambia la scelta del Fold aperto. Il gesto inverso rimane possibile anche disattivando l’opzione mentre la tastiera è divisa. La precedente scelta Dividi con due pollici resta il controllo generale.

## Pillola

Verde #16803C con spunta soltanto dopo salvataggio confermato, breve permanenza e ritiro animato. Rosso #B3261E con testo dell’errore e azione Riprova per errori certi o dati incompleti. Il rosso non svanisce da solo: permette di capire il problema e correggere la frase, oppure chiudere con la X e ritrovare i suggerimenti. Una frase modificata ripristina l’aspetto normale. Esito remoto incerto o Task salvata con avviso fallito: niente nuovo invio dalla stessa conferma, per evitare duplicati; resta la chiusura. Aprire il dialer non è un salvataggio e non produce il verde.

## Arresto segnalato e diagnosi

Nel video 37226.mp4 il tastierino è visibile. Le interruzioni coincidono con il passaggio a un possibile numero di telefono e con frasi come «ricordami di»/«evento…». **Non è disponibile lo stack trace del telefono e il crash non è stato riprodotto nei test; la causa esatta non è accertata.** Non dichiarare risolto il difetto sul Fold.

Il riconoscimento/aggiornamento dell’offerta, la conferma e il ripristino accesso hanno ora un confine di recupero per RuntimeException e LinkageError: sospende soltanto le azioni per quella sessione, ripristina la barra e lascia continuare la scrittura, senza effettuare salvataggi automatici. Il feedback asincrono intercetta separatamente gli errori della UI. Non è un gestore globale, non intercetta arresti nativi, errori di memoria o tutti i callback grafici e non è una prova della correzione della causa.

In Azioni dalla frase → Diagnostica delle azioni è possibile leggere e copiare una versione ridotta dell’ultimo errore gestito e dell’ultimo crash già registrato dall’app. Include classi di eccezione e righe del codice; esclude messaggi delle eccezioni, testo digitato e l’ultimo log. Non viene inviato automaticamente. Nessun nuovo ascolto o registrazione della digitazione.

## Impostazioni

Aspetto separa Tasti e materiali, Luci e movimento, Creazioni, Icone e superfici, Disposizione. Animazioni ha una pagina propria. Menu della virgola è nella sezione funzionale; Gesti e strumenti distingue azioni rapide, movimento e contenuti. Le schede hanno accenti cromatici e superfici sfumate leggibili sia in chiaro sia in scuro, mantenendo feedback di pressione e transizioni di navigazione. Il catalogo conserva l’anteprima grande prima di applicare un tema. La lente apre la ricerca già focalizzata e richiede la tastiera; i risultati rimandano alle nuove categorie.

## Limiti

Google Tasks/OAuth non è stato collegato su un account reale. Resta disponibile la scelta esplicita Sul telefono, senza account né carta. Calendario, rete e notifiche sono verificati con simulazioni Android; nessuna prova sul telefono fisico, nessun benchmark FPS o nuova accuratezza di digitazione misurata. Verifiche e firma nella nota VERIFICA-0.6.61.md.
