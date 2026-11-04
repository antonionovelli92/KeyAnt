# Verifica KeyAnt 0.6.54 — 4 novembre 2026

## Risultato conclusivo

- **142 test superati**, 24 classi, zero fallimenti/errori/saltati. Suite completa ripetuta dopo le rifiniture di scheda, blocco dopo il salvataggio e trasformazioni dei tasti. Dopo le ultime due modifiche al riepilogo della destinazione e all’incolla multilinea sono stati ripetuti anche i 10 test inline: tutti superati.
- APK compilato: package `it.keyant.keyboard`, versione **0.6.54**, versionCode **81**, minSdk 26, targetSdk 35, non debuggable.
- Firma SHA-256 invariata: `bf7bc5998c63e50de960d4506499dce857cea819468673d0ca52d31bed527aa4`.
- `apksigner verify`, `zipalign -c -P 16 4`, integrità ZIP dell’APK e verifica SHA delle librerie native riusciti.
- APK SHA-256: `1a22889e5771930e8d2c9210df57fa0d765659bfb6190ebf2900e82fb168425b`.

## Controlli nuovi

Apertura scheda senza Activity o scritture automatiche; editing del titolo intercettato dalla tastiera; giorno Tasks senza inventare un orario; nessuna rete senza token; trasporto Tasks simulato, inserimento solo dopo conferma, doppio tocco con un solo POST; timeout con esito incerto senza retry; provider calendario simulato, vista ricreata e una sola scrittura; rifiuto di ripristinare bozze in un altro testo/campo; render di riepilogo e dettagli; impulso grafico finito, ritorno interrotto/riavviato e rispetto dei limiti del tasto.

Conservata la suite precedente per privacy, suggerimenti, gesti, multitocco, Maker, trasparenze, sfondi, calibrazione e appunti. Lo script riproducibile è `tools/verify_0654.sh`.

## Lint

Il lint completo **non è pulito**: **550 errori, 450 avvisi, 1 suggerimento**, tutti già presenti nella 0.6.53. Confronto per ID, severità, messaggio e file: **zero nuove segnalazioni e zero rimosse**. Le tre nuove segnalazioni iniziali sono state corrette, senza soppressioni globali. Il comando complessivo termina con errore per il lint preesistente; test e assemble risultano completati separatamente nel log.

Durante la preparazione alcune risoluzioni delle nuove dipendenze e un tentativo di saltare una fase Kotlin non sono riusciti. Non sono conteggiati come controlli superati. La verifica conclusiva usa tutte le fasi di compilazione normali e dipendenze ottenute dai repository ufficiali Google/Maven Central; un worker Gradle, heap 1536 MiB, fork dei test limitati come nella 0.6.53.

## Limiti e prove restanti

Nessun account reale ha ricevuto eventi o attività durante i test. La registrazione OAuth su Google Cloud non è stata completata: la console non era accessibile da questa sessione. Seguire `docs/GOOGLE_TASKS_SETUP.md`; fino ad allora non dichiarare operativo Tasks diretto. L’API Tasks non imposta l’ora di notifica.

Robolectric usa Android API 35; non è una prova sul Fold/Pixel fisico o su Android 17. Verificare sul telefono il consenso Google/Android, il ritorno alla tastiera, calendario e sincronizzazione, TalkBack, orientamento e percezione del movimento. I render e il video sono prodotti dal renderer Android nei test e **non certificano FPS o latenza reali**.

Le nuove animazioni sono finite e locali. I tasti opachi evitano un layer intermedio; i bitmap delle texture e le primitive grafiche sono riutilizzati. Nessuna variazione delle hitbox o ritardo dell’invio del carattere.

## Recupero

Sorgenti completi e bundle con cronologia sono allegati alla release; main GitHub resta documentale. Chiave privata, token, account e bozze personali sono esclusi. Consultare ROLLBACK-0.6.54.md.
