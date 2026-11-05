# Build, firma e versioni

## Ambiente

- JDK 17, Gradle 8.14 (wrapper incluso).
- Android SDK Platform 36, Build Tools 36.0.0.
- Android NDK 28.0.13004108.
- `ANDROID_HOME` impostato sull'SDK; accesso ai repository Google e Maven Central.

Eseguire dalla radice:

```sh
python3 tools/fetch_native_libs.py
./gradlew :app:assembleDebugNoMinify
sh tools/verify_0665.sh
```

L'APK viene scritto in `app/build/outputs/apk/debugNoMinify/`. Include arm64-v8a e x86_64; Android minimo 8.0/API 26. La variante personale `debugNoMinify` non abilita il debug Android.

## Firma personale

La chiave originale non deve essere aggiunta a Git. L'ambiente personale può continuare a usare `dev-signing/keyant-dev.jks`, ignorato dal repository, oppure configurare queste variabili:

```text
KEYANT_KEYSTORE
KEYANT_STORE_PASSWORD
KEYANT_KEY_ALIAS
KEYANT_KEY_PASSWORD
```

In assenza della chiave personale la build usa la firma debug locale: è utile per verificare il codice, ma non aggiorna l'installazione personale già firmata. Non disinstallare quell'installazione per provare una build con firma diversa.

Impronta SHA-256 del certificato personale atteso:

```text
bf7bc5998c63e50de960d4506499dce857cea819468673d0ca52d31bed527aa4
```

## Preparazione di una release

1. Incrementare `versionCode` e `versionName` in `app/build.gradle.kts`.
2. Salvare il riferimento precedente e limitare i ripristini ai file modificati.
3. Eseguire test, build, lint e controllare le anteprime Android pertinenti.
4. Verificare ZIP/APK, identificativo, versione, firma e impronta SHA-256 del file.
5. Fornire subito il link all’APK verificato nella chat, prima di attendere gli upload GitHub. Continuare documentazione e pubblicazione nella stessa sessione; non dichiarare GitHub completo prima della verifica.
6. Creare un commit e un tag `v<versione>`; allegare l'APK firmato alla Release corrispondente, insieme a note e checksum.
7. Provare il link dell'asset APK; la pagina della Release e il download sono collegamenti distinti.

Non allegare l'archivio di lavoro privato: può contenere la chiave di firma. I sorgenti pubblici devono escludere chiavi, credenziali, build temporanee e dati personali. Conservare licenze e attribuzioni della base HeliBoard e degli asset. La pubblicazione non è completata finché repository, tag e asset non sono verificati sul servizio.

Le due librerie native AI precompilate sono incluse nello ZIP completo e nel bundle sorgenti. Lo script tools/fetch_native_libs.py ne verifica la SHA-256 e le ripristina se mancano.

## Stato lint

Il controllo lint completo termina con errore per le 550 segnalazioni di errore già presenti nella base 0.6.50 (oltre a 450 avvisi e 1 suggerimento). La suite selezionata e la compilazione APK sono controlli distinti: consultare il rapporto `VERIFICA-0.6.62.md` della release corrente. Non è stata aggiunta una soppressione globale per nascondere il debito preesistente.


## 0.6.54
VersionCode 81, Google Identity Services play-services-auth 22.0.0. La registrazione OAuth Android (package + SHA-1 della firma) si configura nel progetto Google, non in un file segreto dentro l’APK. Test: tools/verify_0654.sh, 24 classi / 142 test. Confermare anche la parità del lint con la 0.6.53 (baseline non pulita). I nuovi flussi si verificano senza creare eventi o attività reali, usando provider e trasporto simulati.

## Compatibilità ICU dalla 0.6.62
Eseguire anche `tools/verify_icu_0662.py` con JDK 17+ e ICU nativo. Robolectric usa il motore regex della JVM host: la compilazione riuscita in quei test non garantisce compatibilità con ICU di Android. Il controllo riproduce la regressione precedente e verifica le espressioni del parser. Non sostituisce una prova sul dispositivo.

## 0.6.64

Eseguire tools/verify_0664.sh. Include le regressioni precedenti e i casi su parser, comando consumato, palette account calendario, intent promemoria, ridisegno/gesto inverso, agenda e Studio. Per la suite nativa usare gradle/keyant-regression.gradle e JVM limitate; confrontare lint con la baseline senza dichiararlo superato. Consegnare l’APK verificato prima di caricare gli archivi GitHub. Conservare risultati, limiti del test fisico e impronte nella release.

## 0.6.65

Gate tools/verify_0665.sh: regressioni precedenti e riconoscimento selezione, Undo, dialer, date multiple, geocodifica prudente, ABC e catalogo. ICU include EventSpan665 e TimeSpelling665. VersionCode 92, firma personale invariata. Non allegare i video del telefono agli archivi pubblici.

## 0.6.66
Eseguire tools/verify_0666.sh, poi assemblare l’APK finale e verificare versione 0.6.66 / codice 93, firma invariata, integrità ZIP e allineamento. La suite usa JVM isolate per il rendering nativo; nell’ambiente offline usare il repository Maven locale già predisposto. Conservare risultati per classe e confronto lint con 0.6.65. Test e artefatto finale devono precedere pubblicazione e consegna del link; non inviare link provvisori. Il ramo GitHub principale resta documentale: progetto completo in ZIP tracciato e git bundle, esclusi segreti.
