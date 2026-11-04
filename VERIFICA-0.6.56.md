# Verifica KeyAnt 0.6.56

**177 test superati in 30 classi**, zero errori, fallimenti o casi saltati. Test schedulati da tools/verify_0656.sh. Risultati per classe in TEST-RESULTS-0.6.56.json.

## Verifiche eseguite

- Frasi italiane con intervalli, attraversamento della mezzanotte, data cinema con anno implicito e numero telefonico. Una conferma, nessun invio automatico. Campo cambiato, doppio tocco, lista non più disponibile e timeout del POST.
- Inserimento nel calendario simulato e Task simulata seguita da un unico allarme per l’orario richiesto. Rimozione di un avviso in sospeso.
- Gesti con eventi touch nel normale gestore IME. Tracciamento intermedio, soglia breve, annullamento, ritorno inverso senza cifra, lettera digitata, cancellazione singola, cambio di larghezza e preferenze indipendenti. Layout simulati 400 px, 760 px split e 840 px landscape a densità mdpi.
- Digitazione veloce con lettere doppie nel layout telefono e split e controllo delle regioni toccabili a 320, 400 e 760 px.
- Otto profili, corsa della faccia rispetto al piede, galleria e ritorno alla home dello Studio. Schermate allegate generate dalle viste Android.
- Lint completo con 550 errori, 450 avvisi e 1 suggerimento. Le segnalazioni sono confrontate per ID, severità, messaggio e file rispetto alla baseline precedente.

## APK e ripristino

Versione 0.6.56, codice 83, package it.keyant.keyboard, minSdk 26, targetSdk 35. Build non debuggable. Firma verificata con apksigner, allineamento pagine da 16 KiB verificato con zipalign e integrità ZIP verificata. Certificato SHA-256 bf7bc5998c63e50de960d4506499dce857cea819468673d0ca52d31bed527aa4.
SHA-256 APK 48042b12b424f5c0ebdf66f052bcb3ad39078507e9b499f634af55b7bd60cc2b.

## Limiti delle prove

Le verifiche Robolectric API 35 usano provider e trasporti simulati. Restano da misurare FPS e precisione sul Fold 8 fisico, ricezione reale degli avvisi e scrittura su un account Google collegato. Per i pannelli resta aperto il confronto con il passaggio preciso del video di riferimento. Il filmato privato non è incluso nella release.
