# Verifica KeyAnt 0.6.58

**220 test superati in 38 classi**, zero fallimenti/errori/casi saltati. Suite tools/verify_0658.sh; dettaglio per classe in TEST-RESULTS-0.6.58.json.

## Nuovi controlli

- Pannelli avviati tramite dispatch del parent Android: calendario da sinistra e numeri da destra; bordi contigui e tastiera realmente traslata. Densità xxhdpi, split, una mano, landscape e ritorno con prima lettera stabile.
- Righe/celle non vuote e disegno con contenuti dopo tre traversate di measure/layout; limite di larghezza numeri/calendario; interruttori provati in entrambe le combinazioni.
- Gesto legacy da Shift: stato sliding inattivo di default e attivabile esplicitamente, indipendente dai pannelli. Non viene soltanto nascosta la linea mantenendo il gesto attivo.
- Interazione Compose con la nuova destinazione: calendario disattivato, numeri ancora attivi, valori persistiti, ritorno al menu. Anteprima KeyAnt-0.6.58-impostazioni.png.
- Errore Google 8 distinto dal 10; nessun token creato in caso di errore. Tutti i precedenti controlli di frase, pillola, appunti, salvataggi simulati, pressione, multitocco, Maker e materiali restano inclusi.

## Build

APK firmato 0.6.58, versionCode 85, non debuggable; package it.keyant.keyboard, minSdk 26, targetSdk 35. Certificato invariato verificato con apksigner, allineamento 16 KiB verificato con zipalign, integrità ZIP verificata.

SHA-256 APK: cb1ddcc16ea037dcd6e87d3612dc03a67cbdbd858dda08e65f790f02c7b6763b.
Certificato SHA-256: bf7bc5998c63e50de960d4506499dce857cea819468673d0ca52d31bed527aa4.

## Lint e limiti

Lint completo resta non superato per **550 errori, 450 avvisi e 1 suggerimento preesistenti**. Nessuna segnalazione aggiunta o rimossa, confronto per ID, severità, messaggio e file.

Robolectric API 35 con grafica nativa e servizi simulati non sostituisce il rendering hardware e le prove sul Fold 8 fisico. Nessuna misura FPS o prova reale Google Tasks è dichiarata. Il video conferma l’errore 8 e il pannello vuoto precedente, ma non ne isola la causa sul dispositivo. La console Google Cloud è stata ricontrollata e restituisce Site Unavailable: il collegamento Tasks resta irrisolto e non è certificato da questa release.
