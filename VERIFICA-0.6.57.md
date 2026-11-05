# Verifica KeyAnt 0.6.57

**215 test superati in 36 classi**, zero errori, fallimenti o casi saltati. Test schedulati da tools/verify_0657.sh. Risultati per classe in TEST-RESULTS-0.6.57.json.

## Verifiche eseguite

- Icona manuale predefinita, suggerimenti mantenuti, apertura opzionale, chiusura X senza perdita del contesto, aggiornamento della frase a pillola chiusa, nessun salvataggio durante il riconoscimento. Timeout inattivo di 20 secondi aggiornato solo dalla digitazione.
- Inserimento di titolo, indirizzo e durata nel provider calendario simulato; validazione durata e preservazione del messaggio di accesso Tasks. Un risultato Google RESULT_CANCELED con intent di errore conserva lo stato OAuth specifico.
- Trascinamento distribuito dal parent Android a densità xxhdpi, tastiera traslata e bordi complementari, figli misurati prima del rilascio senza successivo layout forzato. Variante a una mano, landscape e split. Prima lettera durante il rientro animato correttamente emessa una sola volta.
- Video scartato assente al riavvio dell’editor e dopo reimportazione galleria, nuova copia esplicita ammessa. La digitazione non ritira un nuovo media arrivato nel frattempo. Regressioni di clipboard, video, importazione e privacy.
- Suite precedente su digitazione rapida, multitocco, calendario, Tasks simulata e notifiche locali, temi, materiali, Maker e impostazioni. Nessun test fisico o con un account Google reale.
- Lint completo con 550 errori, 450 avvisi e 1 suggerimento. Le segnalazioni sono confrontate per ID, severità, messaggio e file rispetto alla baseline precedente.

## APK e ripristino

Versione 0.6.57, codice 84, package it.keyant.keyboard, minSdk 26, targetSdk 35. Build non debuggable. Firma verificata con apksigner, allineamento pagine da 16 KiB verificato con zipalign e integrità ZIP verificata. Certificato SHA-256 bf7bc5998c63e50de960d4506499dce857cea819468673d0ca52d31bed527aa4.
SHA-256 APK c7105d7eb58b4d0d13725a88a76e2665f9bfa5aa69ed93b98b91d4e3ee068b0b.

## Limiti delle prove

Le verifiche Robolectric API 35 usano provider e trasporti simulati. Restano da misurare FPS e precisione sul Fold 8 fisico, ricezione reale degli avvisi e scrittura su un account Google collegato. Per i pannelli resta aperto il confronto con il passaggio preciso del video di riferimento. Il filmato privato non è incluso nella release.
