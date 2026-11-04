# Verifica KeyAnt 0.6.52

4 novembre 2026. Revisione della 0.6.51 recuperata dopo l’interruzione della sessione. JDK 17, Gradle 8.14, SDK 36, NDK 28.0.13004108.

## Test eseguiti sulla revisione finale

**118 test, 20 classi: 0 fallimenti, 0 errori, 0 saltati.** Esecuzione Robolectric API 35. Elenco e conteggi per classe in `docs/TEST-RESULTS-0.6.52.json`.

La suite comprende riconoscimento di comandi espliciti, date, scadenza delle offerte, privacy, disattivazione, conferma Calendar/Dial, temi e Maker, appunti, multitocco, gesti, casi dei suggerimenti e calibrazione già coperti dalla suite precedente.

Cinque nuovi casi coprono continuità visiva nel cambio di destinazione durante un’animazione, rispetto della riduzione del movimento, riuso dell’icona senza modificare la larghezza, impossibilità di attivare un’azione disabilitata, cancellazione delle letture accodate e conferma scorrevole in landscape. La conferma landscape è stata renderizzata con Android/Robolectric e ispezionata.

Durante l’implementazione i test hanno rilevato e permesso di correggere due aspetti: azzeramento della frazione di un animatore riutilizzato e ripristino da parte di Android dell’animazione di finestra standard quando lo stile era impostato a zero. Lo stile esplicito senza movimento elimina il secondo comportamento. Il test di Annulla attende ora correttamente il messaggio del listener Android.

## APK verificato

- Package `it.keyant.keyboard`, versionName `0.6.52`, versionCode `79`.
- Variante `debugNoMinify`, non debuggabile, min API 26, target API 35.
- Build `assembleDebugNoMinify` completata; integrità ZIP, `aapt`, `apksigner` e `zipalign -c -P 16 4` verificati.
- Certificato SHA-256 invariato: `bf7bc5998c63e50de960d4506499dce857cea819468673d0ca52d31bed527aa4`.
- SHA-256 APK: `ea11210fe7bea772097271626cfae054e709db7dd08e0f5fb6902061c4770460`.

Installabile sopra la versione personale precedente senza disinstallare.

## Lint: confronto completo, debito ancora presente

Il lint completo è stato eseguito separatamente dopo che il daemon della prima esecuzione combinata si era chiuso durante il lint, a test e APK completati. La seconda esecuzione ha prodotto il rapporto completo e termina con errore per le segnalazioni già presenti.

**550 errori, 450 avvisi, 1 suggerimento. Nessuna segnalazione aggiunta o rimossa** rispetto al rapporto 0.6.51, confrontando ID, gravità, messaggio e file (senza numeri di riga, che cambiano con le modifiche).

Errori: MissingTranslation 509, WrongConstant 20, NewApi 12, AppCompatCustomView 4, LocalContextConfigurationRead 3, MissingPermission 1, SuspiciousIndentation 1. Nessuna soppressione globale aggiunta. Non si dichiara il lint superato.

## Limiti e stato della consegna

Nessuna prova su Fold fisico e nessuna misura di frame time: transizioni e casi funzionali verificati localmente, fluidità percepita e passaggio alle app OEM da confermare sul dispositivo. Google Tasks rimane “Copia e apri”, Calendar propone una bozza da salvare, telefono apre il tastierino.

APK, sorgenti pubblicabili, storico e checksum sono preparati. La documentazione è destinata al ramo GitHub; la pubblicazione degli allegati della release 0.6.52 richiede ancora autorizzazione. Il bundle conserva baseline 0.6.50, lavoro 0.6.51 e revisione 0.6.52. Chiave personale esclusa dagli archivi.
