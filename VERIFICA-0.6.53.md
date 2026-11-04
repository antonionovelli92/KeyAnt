# Verifica KeyAnt 0.6.53 — 4 novembre 2026

## Risultati

- **129 test automatici superati**, 22 classi, zero fallimenti/errori/saltati.
- Build `assembleDebugNoMinify` riuscita; APK `it.keyant.keyboard`, versionName 0.6.53, versionCode 80, minSdk 26, targetSdk 35. APK non debuggable; arm64-v8a e x86_64.
- Firma personale SHA-256 `bf7bc5998c63e50de960d4506499dce857cea819468673d0ca52d31bed527aa4`, invariata rispetto alla 0.6.52.
- `apksigner verify`, integrità ZIP/APK e `zipalign -c -P 16 4` riusciti. Librerie native verificate dallo script incluso.
- APK SHA-256: `1fbe24c220bcf30f5bb284d870b2fff0b01e1ae2388f24ac645361083c6e2c57`.

## Copertura

Nuovi controlli: pressioni/tempi differenti, maschere glow senza badge e arresto dell’animatore, consenso calendario solo all’uso esplicito, dati evento/fuso/durata e back-reference dell’avviso, doppio tocco e rotazione con un solo invio, revoca del permesso prima della scrittura, esito incerto senza retry, calendari assenti, titolo separato dalla data, render della conferma su schermi bassi.

La suite precedente copre azioni, esclusioni privacy, suggerimenti, multitocco, gesti della barra, calibrazione, temi, Maker, trasparenze, sfondi e funzioni correlate. Due assert sul numero totale di temi sono stati aggiornati da 281 a 287; i controlli di unicità e compatibilità rimangono.

Le prime esecuzioni con build e test insieme hanno esaurito la memoria del processo di test (exit 137); non sono conteggiate come riuscite. La verifica conclusiva separa test, assemble e lint. `gradle/keyant-regression.gradle` limita i fork paralleli a 1 e ricrea la JVM ogni 6 classi, con heap 2 GiB; Gradle usa 1 worker e 1536 MiB. Questo rilascia anche le allocazioni grafiche native tra gruppi.

Dopo l’estrazione finale di tre testi nelle risorse italiane sono stati ripetuti anche gli 8 test del calendario, tutti superati, e ricostruito l’APK.

Comandi riproducibili: `tools/verify_0653.sh`, configurazione in `docs/BUILD_AND_RELEASE.md`. Risultati per classe in `TEST-RESULTS-0.6.53.json`.

## Lint e limiti

Il lint completo **non è superato**: 550 errori, 450 avvisi e 1 suggerimento già presenti. Confronto per ID, severità, messaggio e file con la 0.6.52: nessuna nuova segnalazione, nessuna rimossa. Non sono state aggiunte soppressioni globali.

I render allegati sono prodotti dal renderer Android/Robolectric: non dimostrano FPS né latenza su Fold fisico. Nessun evento è stato creato nell’account reale durante i test; il provider calendario è simulato. Verificare sul dispositivo il calendario Google/Samsung, la sincronizzazione, gli avvisi e i permessi negati/revocati. Google Tasks diretto non è implementato/configurato in questa revisione; vedi RICERCA-0.6.53.md.

## Distribuzione

APK, sorgenti pubblici completi, bundle con cronologia, note e checksum sono gli allegati della release v0.6.53. La chiave di firma e dati personali non fanno parte degli archivi. Gli archivi automatici Source code di GitHub contengono solo il ramo documentale; usare sorgenti-pubblici.zip o history.bundle per recuperare Android.
