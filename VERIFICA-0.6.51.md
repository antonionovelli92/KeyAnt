# Verifica KeyAnt 0.6.51

Eseguita il 4 novembre 2026, JDK 17 / Gradle 8.14 / SDK 36 / NDK 28.0.13004108.

## Test

- Suite selezionata: **112 test, 0 errori, 0 fallimenti, 0 saltati** su 19 classi. Comprende 100 regressioni precedenti e 12 nuovi casi.
- Revisione finale del comportamento della freccia: **13 test mirati superati**, incluso il nuovo caso che impedisce a un’azione nascosta di intercettare il tocco sulla freccia normale. Le 100 regressioni precedenti non sono state ripetute dopo questa modifica locale.
- Verificati riconoscimento italiano, date non valide, scadenza dell’offerta, mancata esecuzione automatica, cambio editor, password/incognito/no-learning, ritmi rapidi con letture raggruppate e disattivazione.
- Verificati intent Calendar/Dial, scelta obbligatoria di data mancante, contrasto dei sei materiali, ricerca e integrazione Maker.
- Anteprima Android dei sei materiali in chiaro/scuro renderizzata e ispezionata. Corretto il contrasto del rame e il campionamento della trama opale sulla barra spaziatrice.

Sono test locali Robolectric (API 35), non una sessione su un telefono fisico. Restano da verificare sul dispositivo il passaggio alle versioni installate di Tasks/Calendar, il comportamento OEM/Fold e la fluidità percepita. Non è stata misurata una riduzione degli errori di battitura.

## APK

Variante `debugNoMinify`, non debuggabile, package `it.keyant.keyboard`, versionName `0.6.51`, versionCode `78`; min API 26, target API 35. ABI arm64-v8a e x86_64. Controlli con `aapt`, `apksigner` e `zipalign -c -P 16 4`.

Firma attesa SHA-256:
`bf7bc5998c63e50de960d4506499dce857cea819468673d0ca52d31bed527aa4`.

L’impronta del file APK è nel file SHA256SUMS della distribuzione.

## Lint: debito preesistente, non controllo pulito

Il lint completo termina con **550 errori, 450 avvisi e 1 suggerimento**, gli stessi conteggi della 0.6.50. Ripartizione errori: MissingTranslation 509, WrongConstant 20, NewApi 12, AppCompatCustomView 4, LocalContextConfigurationRead 3, MissingPermission 1, SuspiciousIndentation 1. Nessuna segnalazione nei nuovi file 651. Nessuna soppressione globale aggiunta. L’ultima modifica locale alla condizione della freccia è stata ricompilata e testata; non è stata ripetuta l’intera analisi lint dopo quella modifica.

## Limiti funzionali dichiarati

Google Tasks usa **Copia e apri**, non creazione via API. Il riconoscitore usa comandi espliciti e regole locali, non comprensione semantica generale. Calendar e telefono richiedono un gesto e una revisione. I temi sono adattamenti nativi dei riferimenti, non repliche certificate 1:1.

## Ripristino

Baseline Git `baseline-0.6.50`, nuova versione `v0.6.51`. Copie originali del livello di tocco in `maintenance/rollback-0651-writing/`; nessun azzeramento di memoria, preferiti o calibrazione. Le azioni contestuali si possono disattivare separatamente.
