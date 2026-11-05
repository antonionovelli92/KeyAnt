# Verifica KeyAnt 0.6.67

531 test superati in 89 classi, ultima esecuzione per classe: zero fallimenti, errori e saltati. Suite 0.6.66 più regressioni 0.6.67, JVM isolate da 768 MiB. ICU nativo: 85 espressioni compilate, errore storico 66308 riprodotto e correzione conservata.

## Regressioni specifiche

- Video 37320: inizio fra dieci minuti e fine domani mattina alle 10; fine al 7 di questo mese alle 11; cambio di anno, giorni scritti senza accento, input incompleto, durata 1h e 45min. Anche digitazione progressiva senza eccezioni.
- Scrittura reale nel provider simulato con fine esatta alle 10:00:00: conservato l'istante finale invece di ricostruirlo da minuti arrotondati. Un cambio manuale della durata prevale sul termine interpretato. Dati temporali incompleti non salvano né consumano il messaggio.
- Margini trasparenti, contrasto del testo almeno 4,5:1 nei punti campionati dei due esiti standard e controllo dei pixel verde/rosso; frame intermedi di entrata e uscita della pillola, animazioni disattivate, ritorno ai suggerimenti e tempo di conferma. Rendering degli esiti ispezionato.
- Swipe immediato da Invio, ?123 e ABC, tap singolo, direzione errata e pressione precedente; opzioni indipendenti anche nella pagina delle impostazioni. Le regressioni precedenti coprono Fold affiancato, split, gesto inverso e pannelli traslucidi.
- Barra classica predefinita; manopola con apertura al tocco o pressione lunga; comando Copia consegnato al dispatcher, ultimo comando a destra e nessuna memoria di query o testi. Anteprima senza modificare la cronologia. Rendering della manopola aperta e del carosello ispezionato.
- Barra automatica: riga inattiva nascosta, parole e superfici esterne ripristinate, nessun ridimensionamento mentre lo stato del puntatore è attivo. Ripristino prima delle altre superfici. Le prove simulano lo stato del puntatore, non misurano l'interazione fisica.
- Catalogo a 1000×750 con un solo selettore, sette temi Disegno, luminosità richiusa e nessuna seconda fila di recenti. Pagina barra a 420×900, scelta della modalità senza alterare l'ordine. Ricerca senza duplicati per le nuove opzioni.
- Tre nuovi materiali con geometria e corsa identiche a China, senza accento rosso forzato; Essenziale opaco. Rendering delle nuove varianti nella galleria ispezionato. Maker e trasparenza mantengono le regressioni precedenti.
- Intera classe InputLogicTest (eccetto il caso dimostrativo Hangul già escluso dal gate precedente): risposte tardive per prefisso vecchio, risposte vuote/obsolete, inserimento letterale allo spazio, Annulla, digitazione rapida, correzione e composizione. Doppie lettere sul telefono e sul Fold.
- Suite della 0.6.66 conservata: crash dei materiali traslucidi, contrasto pillole chiare, X GIF/emoji, oggi nel calendario, sincronizzazione della trackball, suoni e luci dei pannelli, permessi, privacy, salvataggi e migrazioni.

## APK

Pacchetto it.keyant.keyboard; versione 0.6.67, codice 94, non debuggable. Integrità ZIP, allineamento 16 KiB e firma personale invariata verificati.

SHA-256 APK: 9f8193c7ef9d5d0a44709399b32ea7627d25ad2f83445efbbe291da8b144ffa0

Certificato SHA-256: bf7bc5998c63e50de960d4506499dce857cea819468673d0ca52d31bed527aa4.

## Limiti espliciti

Lint non superato: 550 errori, 448 avvisi e 1 suggerimento preesistenti. Zero nuove segnalazioni rispetto alla 0.6.66 confrontando ID, severità, messaggio e file; nessuna soppressione globale.

Prove Robolectric SDK 35 con rendering nativo e servizi/provider simulati. Nessun test fisico su Fold o Pixel e nessuna misura FPS. Nessuna prova su account Google reale, sincronizzazione remota o notifiche a telefono spento. Le sostituzioni durante la digitazione rapida nel video non provano quale gesto o callback le abbia causate; la protezione aggiunta riguarda risposte del dizionario non più pertinenti, non promette una previsione infallibile.

Nessuna modifica a OAuth, fatturazione, permessi o destinazioni dei dati in questa versione. Video personali, credenziali e chiavi di firma esclusi dagli archivi. Test e immagini di verifica usano dati sintetici. APK consegnata soltanto dopo pubblicazione e controllo degli allegati.
