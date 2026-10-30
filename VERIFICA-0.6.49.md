# Verifica KeyAnt 0.6.49

- Build APK debugNoMinify con versionCode 76; manifest `debuggable=false`.
- Firma verificata con apksigner e confrontata con 0.6.48: SHA-256 certificato `bf7bc5998c63e50de960d4506499dce857cea819468673d0ca52d31bed527aa4`.
- Suite mirata: 69 test software, inclusi renderer, quattro palette Satin, opacità distinte, unificazione reversibile, Maker, blur dell’anteprima, layout Fold, controlli Compose, regressioni su calibrazione e comportamenti della versione precedente.
- Immagini prodotte dai renderer reali ispezionate: quattro temi e confronto trasparenza/blur; impostazioni a 900 × 800 dp.
- Non è una prova su un Fold fisico. Sfocatura tra finestre, app sottostante, inset, consumo e fluidità sul dispositivo restano da verificare nell’uso reale.

## Controllo statico

Lint globale **non superato**: 550 errori, 450 avvisi, 1 suggerimento. Fra gli errori: 509 traduzioni mancanti, 20 WrongConstant, 12 NewApi, 4 AppCompatCustomView, 3 LocalContextConfigurationRead, 1 MissingPermission, 1 SuspiciousIndentation.

Confrontate tutte le 550 posizioni segnalate con la baseline 0.6.48: la riga di codice indicata esiste già nella baseline in tutti i casi. Nessun errore segnalato nei nuovi file SatinCaps, BackgroundMaterial e BackgroundSample. Questo confronto non equivale a un lint completo rieseguito sulla baseline e non certifica l’assenza di altri difetti. I problemi preesistenti non sono stati soppressi con una nuova baseline né alterando le regole.

## Riproduzione

Vedere `tools/verify_0649.sh` e `docs/BUILD_AND_RELEASE.md`. I test usano Robolectric API 35 e renderer nativo. L’archivio pubblico esclude chiave di firma, telemetria personale e output locali; la chiave personale serve soltanto alla distribuzione firmata. L’APK non modifica il formato dei campioni appresi o le soglie di correzione. Ripristino del sorgente documentato in `maintenance/rollback-0649/`.
