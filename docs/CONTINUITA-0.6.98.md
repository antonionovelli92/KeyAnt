# Continuità KeyAnt 0.6.98

Codice versione 125. Commit sorgente completo: `0e80459160788ad767de80b867319717380e7d75`. Base completa 0.6.97: `aafbd29e813908ce24bedd942de92f785de5ae82`.

Questo ramo resta documentale. Per ricostruire il progetto: estrarre `KeyAnt-0.6.97-sorgenti.zip` dalla release v0.6.97 e applicare `patches/KeyAnt-0.6.98-da-0.6.97.patch` con `git apply`. La patch comprende tutto il delta dei sorgenti, test e documenti; il bundle 0.6.97 conserva la cronologia precedente. Non utilizzare l'archivio automatico del ramo documentale come progetto Android.

Vedere AGGIORNAMENTO-0.6.98.md, VERIFICHE-0.6.98.txt e AUDIT-TEMI-0.6.98.tsv. Il file TEST-0.6.98.json contiene il riepilogo dei 67 test; il metodo aggiuntivo di audit genera 3040 render.

APK 0.6.98 compilata, firmata con certificato originale e consegnata come allegato diretto in chat. La release GitHub 0.6.98 e i suoi allegati binari NON sono pubblicati: il browser richiede accesso GitHub. Non costruire un link download/v0.6.98 finché gli asset non esistono.

Build: JDK 21 completo, Gradle 8.14, SDK 36. In questa sessione NDK non disponibile: `-PkeyantNativePrebuiltDir` punta a copie di libjni_latinime.so estratte dalla APK 0.6.97 verificata, una per ABI arm64-v8a/x86_64. Nessuna modifica al motore C++. La chiave privata è esterna al repository. Vedere BUILD_AND_RELEASE-0.6.98.md. L'APK è più grande perché libkeyant_ai.so conserva simboli di debug senza lo strip NDK.

Non sono state modificate geometrie di base, equilibrio orizzontale, preferenze dimensionali o modalità Trackball. Le sette differenze raster rispetto all'audit precedente sono documentate nel rapporto; nessuna promessa di identità grafica universale o prove su telefono fisico.
