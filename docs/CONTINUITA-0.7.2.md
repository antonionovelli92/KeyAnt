# Punto di ripresa KeyAnt 0.7.2

Commit locale 1295513e9034be0e872de97a5f4fecafb51f5545, albero a4ab6123eea6ed75c93b75caed2e8324a2c521cf. Base: albero verificato 0.7.1 93c2bca4d674b1ad62234c62577b519bc9ace8a7. Applicare al sorgente completo 0.6.97 le patch 0.6.98 e 0.6.99 presenti sul repository documentale, poi le patch 0.7.0, 0.7.1 e 0.7.2 incluse qui. Il sorgente base della release v0.6.97 ha SHA256 b8c9ddcb844141a836dd0ba873380a198fa4bb914430ac384868139b0623c57c.

La pubblicazione su antonionovelli92/KeyAnt non è stata tentata: rimane irrisolto il blocco di approvazione automatico precedente sulla pubblicazione della patch 0.7.0. Le revisioni 0.7.0–0.7.2 sono conservate qui. Non dichiararle pubblicate e non aggirare il blocco.

Toolchain: Temurin 21.0.13.1+2, Gradle 8.14, SDK/build tools 36, target35/min26; native libjni_latinime.so dalle ABI arm64-v8a/x86_64 della APK 0.6.97 verificata. Firma personale esterna al repository; riferimento al backup privato nelle istruzioni di build del progetto. Non distribuire il backup o la chiave.

Comando: gradle --no-daemon --max-workers=2 -PkeyantNativePrebuiltDir=/percorso/native -I gradle/keyant-0702.gradle :app:testDebugNoMinifyUnitTest :app:assembleDebugNoMinify, con JAVA_HOME, ANDROID_HOME e KEYANT_KEYSTORE configurati. Riferimenti ai file modificati nella patch e nelle note di aggiornamento.

La priorità è rivalutata a ogni evento, conservando la superficie inline solo per il campo corrente. Non leggere credenziali dal provider e non dedurre il canale OTP dal solo nome PayPal. Una notifica deve poter sostituire la pillola Authenticator senza riaprire la tastiera. I codici privati hanno didascalia generica e non passano dal salvataggio cronologia; incognito manuale escluso. Il comportamento reale sul Fold resta da confermare dall'utente.
