# Build KeyAnt 0.6.99

Pacchetto `it.keyant.keyboard`, versionCode 126. JDK 21.0.13.1, Gradle 8.14, SDK/build-tools 36. Variante `debugNoMinify` con firma originale esterna al repository.

Ricostruzione: estrarre il sorgente completo `KeyAnt-0.6.97-sorgenti.zip` dalla release v0.6.97, applicare nell’ordine le patch 0.6.98-da-0.6.97 e 0.6.99-da-0.6.98. Non usare il ramo documentale come progetto Android. Le librerie libjni_latinime.so sono quelle della APK 0.6.97 verificata, arm64-v8a e x86_64, senza modifiche C++. Il parametro keyantNativePrebuiltDir indica la cartella con le due sottocartelle ABI. La libreria AI resta quella inclusa nei sorgenti.

```sh
export JAVA_HOME=/percorso/jdk-21
export ANDROID_HOME=/percorso/sdk
export KEYANT_KEYSTORE=/percorso/privato/keyant-dev.jks
gradle --no-daemon --max-workers=2 -PkeyantNativePrebuiltDir=/percorso/native :app:assembleDebugNoMinify
gradle --no-daemon --max-workers=2 -PkeyantNativePrebuiltDir=/percorso/native -I gradle/keyant-0699.gradle :app:testDebugNoMinifyUnitTest
# Audit separato, stesso init script:
# -PkeyantTestClasses=KeyAntAudit699Test
# Gesti e pannelli di regressione:
# -PkeyantTestClasses=KeyAntGesture669Test,KeyAnt694Test
```

Usare eventuali proxy dell’ambiente senza registrarne credenziali. La chiave originale è necessaria per installare sopra l’app esistente. Non è inclusa negli allegati. Senza NDK lo strip delle librerie native è omesso: la APK è più grande. Firma v2 e allineamento ZIP 16 KiB verificati; ciò non misura le prestazioni su un dispositivo reale.

`lintVitalDebugNoMinify` è superato durante la compilazione. Il lint globale ha debito preesistente documentato nelle versioni precedenti: non viene dichiarato superato in questa revisione.
