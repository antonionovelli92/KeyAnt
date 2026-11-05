# Verifica KeyAnt 0.6.59

**226 test superati in 41 classi**, zero fallimenti/errori/casi saltati. Suite tools/verify_0659.sh; dettaglio per classe in TEST-RESULTS-0.6.59.json.

## Nuovi controlli

- Pannelli collocati in una finestra Activity di test con dispatch reale del parent. Per ogni cifra viene verificata la presenza di pixel diversi dal fondo nell’area corrispondente, dopo tre passaggi di layout; il tocco al centro di 5 deve consegnare 5. Temi Disegno China, Disegno Carta, Glass e Xbox.
- Layer software solo sul pannello, tastiera principale hardware e outline clipping spento sul pannello; calendario ridisegnato dopo cambio mese, una mano, landscape e split. API 35, grafica nativa Robolectric, densità xxhdpi.
- Guida Compose espandibile, copia dei soli dati pubblici, chiusura, destinazione invariata e assenza di token inventati. Impronta certificato provata con firma sintetica nota su API 35 e percorso legacy API 26; firma assente riportata come non disponibile.
- Regressioni esistenti: prime lettere durante rientro, doppie rapide, multitocco, indipendenza interruttori, pillole, appunti, salvataggi simulati, Maker e materiali.

Il primo test del click usava un albero non collegato a una finestra: il callback Android rimaneva in coda. La fixture è stata corretta collegandola a una Activity e drenando la coda UI. Non è stato rimosso il controllo di inserimento. Il test di ri-copia del video usava un timestamp fissato a 20 ms dopo l’inizio del primo rendering: sotto carico poteva precedere la chiusura. Ora la copia esplicita ha un timestamp successivo alla chiusura effettiva; le asserzioni di ritiro e riapertura sono invariate. I test bitmap precedenti non riproducevano il difetto hardware del filmato; i nuovi test non autorizzano a dichiararlo risolto sul Fold.

## Build

APK firmato 0.6.59, versionCode 86, non debuggable, package it.keyant.keyboard. Firma invariata, zipalign 16 KiB e integrità ZIP verificati.

SHA-256 APK: ac2e9b941e818613a235b2541538c8dcea130370ec286d0a8f5bffbd3a9cd554.
Certificato SHA-256: bf7bc5998c63e50de960d4506499dce857cea819468673d0ca52d31bed527aa4.

## Lint e limiti

Lint resta non superato per 550 errori, 450 avvisi e 1 suggerimento preesistenti. Nessuna nuova segnalazione rispetto alla baseline, confronto per ID, severità, messaggio e file.

Nessun test su Fold fisico, nessuna misura FPS e nessuna autorizzazione Google reale riuscita. La mitigazione del pannello va confermata con il renderer OEM. La guida OAuth non è una registrazione Cloud: il blocco di accesso alla console è ancora presente. Lo studio Apple è un’analisi documentata, non un nuovo decoder implementato o un benchmark di superiorità.
