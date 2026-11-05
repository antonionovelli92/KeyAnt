# Ripristino 0.6.65

Base: v0.6.64, commit eae1268302edcac0d9fe9d7903bd19125f9ad372. Le nuove preferenze sono additive e conservano le scelte precedenti. Disattivare Esito con i colori del glow o Completa indirizzi online non elimina dati.

Usare lo storico completo allegato alla release per confrontare/revertire la revisione 0.6.65. Per distribuire una correzione mantenere la stessa firma e incrementare versionCode: Android normalmente non permette di installare un APK precedente sopra il nuovo. Non disinstallare alla cieca, perché si perderebbero preferenze locali. Non esportare la chiave privata o credenziali OAuth nei sorgenti.

Un ripristino del codice non cancella gli eventi già salvati. Annulla/Ctrl+Z ripristina solo testo, non operazioni sul calendario. Controllare la destinazione prima di ritentare un salvataggio di esito incerto.
