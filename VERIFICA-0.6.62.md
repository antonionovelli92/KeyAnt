# Verifica KeyAnt 0.6.62

330 test superati in 58 classi, aggregando l’ultima esecuzione per caso. Zero fallimenti, errori o saltati finali. La prima suite di 330 casi ha segnalato un fallimento durante il ritorno animato: il clock automatico di Robolectric avanzava oltre la soglia di pressione lunga. Il test ora controlla esplicitamente i frame e verifica il tocco durante tutti e quattro gli stili. Nessun cambiamento al riconoscimento del tocco è stato necessario; nessun test eliminato.

## Riconoscimento

La diagnosi del telefono indica PatternSyntaxException in ItalianTime660.normalized. Il controllo nativo ICU riproduce U_REGEX_PROPERTY_SYNTAX 66308 con la vecchia espressione e compila quella corretta senza errori. 56 verifiche di espressioni, includendo i campi statici concatenati valutati dalla JVM e le espressioni letterali. ICU della macchina: libicui18n.so.76; non è una prova sul Fold fisico. Script tools/verify_icu_0662.py. Ogni prefisso delle frasi evento, ricordami e numero telefonico viene verificato; ore con punto/due punti, durate, indirizzi e date conservano la semantica.

## Interfaccia e input

Cancella nel pannello può essere premuto ripetutamente senza chiuderlo. Dimensioni Compatta/Media/Attuale mantengono identiche celle di tocco e producono render distinti. Tutti gli stili mantengono la continuità tra bordo della tastiera e pannello e ripristinano le trasformazioni alla chiusura. Nuove selezioni, persistenza indipendente e anteprime verificate. Test pixel sulla spaziatrice larga a gesto completato prima del rilascio, geometrie 360/760/1080. Rendering China di apertura/chiusura, regressioni split verticale, landscape, Fold, suggerimenti, privacy, salvataggi simulati e digitazione rapida.

## APK e controlli

Versione 0.6.62, codice 89, non debuggable. Integrità ZIP, zipalign 16 KiB, firma invariata verificati. SHA-256 APK: 969558dddc216cc6b6b60ab217af487ad7eee1d8bca9710b287711b15a22dadb.
Certificato SHA-256: bf7bc5998c63e50de960d4506499dce857cea819468673d0ca52d31bed527aa4.

Lint non superato: 550 errori, 450 avvisi, 1 suggerimento preesistenti; zero nuove segnalazioni (confronto ID, severità, messaggio e file). Nessuna soppressione globale.

## Limiti

Nessun dispositivo fisico, misura FPS o confronto di precisione con iPhone. Provider calendario, Tasks e notifiche simulati. Il collegamento OAuth reale non è verificato; nessuna fatturazione o carta attivata. Video personali e diagnostica grezza non inclusi negli allegati pubblici.
