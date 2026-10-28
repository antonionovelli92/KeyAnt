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
./tools/verify_0648.sh
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
5. Creare un commit e un tag `v<versione>`; allegare l'APK firmato alla Release corrispondente, insieme a note e checksum.
6. Provare il link dell'asset APK; la pagina della Release e il download sono collegamenti distinti.

Non allegare l'archivio di lavoro privato: può contenere la chiave di firma. I sorgenti pubblici devono escludere chiavi, credenziali, build temporanee e dati personali. Conservare licenze e attribuzioni della base HeliBoard e degli asset. La pubblicazione non è completata finché repository, tag e asset non sono verificati sul servizio.

Le due librerie native AI precompilate sono distribuite come allegato della release, con SHA-256 verificato dallo script. Lo ZIP completo dei sorgenti le include già. Il clone Git richiede il comando di ripristino indicato sopra.
