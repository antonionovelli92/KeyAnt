# Verifica KeyAnt 0.6.69

Esito finale: 213 casi distinti superati in 25 classi, nessun fallimento finale, errore o test saltato nei casi selezionati.

- Suite estesa: 197 test al checkpoint e9661f7; regressione di scrittura, correzione, appunti, pannelli, split, materiali e Studio.
- Riesecuzione finale sugli appunti dopo la protezione delle copie con timestamp identico: 57 casi; 56 subito superati. Il solo test rimasto descriveva il vecchio requisito «mai pillola privata». Aggiornato per verificare la nuova disponibilità iniziale e i due interruttori di disattivazione, poi rieseguito con successo. Nessuna modifica al codice applicativo per aggirare quel test.
- Primo gruppo: 65 test, con un fallimento reale sul contenitore della manopola. Larghezza corretta e verificata nella suite estesa a 320, 420 e 900 px.
- 85 espressioni compilate con ICU nativo. Rendering nativo Robolectric API 35 e controlli Compose.
- Esclusioni upstream già presenti: dimostrazione Hangul nota come fallente e disponibilità di URL esterni XLink; dettagli in gradle/keyant-regression.gradle.

## APK
Package it.keyant.keyboard, versionCode 96, versionName 0.6.69, non debuggable.
Integrità ZIP, firma e zipalign con allineamento 16 KiB verificati.
Firma SHA-256 uguale alla 0.6.68: bf7bc5998c63e50de960d4506499dce857cea819468673d0ca52d31bed527aa4.
Dimensione: 144472929 byte.
SHA-256: 848eb2f360f8058a30a73e197ff68e826bb39d9c66ef3e35106514463e93be1a.
Ultimo commit con modifiche al codice applicativo: 2b3910a85b84d56707cd9fa9379eb725aff6b67f.

## Analisi statica e limiti
Lint NON è globalmente superato: 550 errori, 448 avvisi e 1 suggerimento preesistenti. Confronto strutturale con il rapporto originale 0.6.68: zero nuove segnalazioni, stessi conteggi. Non è stata aggiunta una baseline per nasconderli. Una verifica offline parallela di diagnostica non è partita per il lock della cache Gradle; il controllo principale è stato completato regolarmente fino al rapporto lint.

Nessuna prova su Fold/Pixel fisico, nessuna misura FPS o comparazione misurata con iPhone. Il compositore One UI, gli editor reali che limitano immagini/video e la fluidità percepita richiedono riscontro sul telefono. Nessun collegamento reale Google/OAuth o salvataggio su account personale dichiarato verificato.

I test usano dati sintetici. Chiavi e credenziali personali escluse dagli archivi. Sorgenti e APK non contengono il backup personale del telefono.
