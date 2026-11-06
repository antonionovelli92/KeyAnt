# Recupero e rollback 0.6.70
Installare sopra la versione esistente: stessa firma, versionCode 97. Non disinstallare per tentare un downgrade: si perderebbero i dati dell’app.
Base completa: sorgente v0.6.69, commit d6079be3efced0d914e364183b64751882ced49b. Il bundle conserva la cronologia; lo ZIP dedicato conserva i sorgenti completi senza chiavi. Gli archivi Source code automatici della release riguardano il ramo documentale.
Android blocca normalmente APK con versionCode inferiore: per un rollback conservativo ricompilare il checkpoint desiderato con un codice superiore e la stessa chiave di firma. Chiave personale mantenuta separata, mai pubblicata.
Nessuna migrazione distruttiva del dizionario: il peso della recenza è calcolato in lettura. Nuove preferenze e progetti Maker sono retrocompatibili; una versione precedente ignora le nuove presentazioni.
Esportare dall’app il backup delle impostazioni e dei dati personali: il repository e gli APK non contengono i dati del telefono. Il recupero Ctrl+Z temporaneo non è un backup e non sopravvive a chiusura/cambio campo.
