# Verifica KeyAnt 0.6.70

Esito dei test: **264 casi distinti superati in 32 classi**, nessun fallimento finale, errore o test saltato nei casi selezionati.

- Suite estesa: 263 casi. Tre fallimenti nelle fixture: due selettori Compose legati alle etichette precedenti e un test Ctrl che non aveva una tastiera montata. Fixture aggiornate senza indebolire le asserzioni sul comportamento.
- Riesecuzione finale: 94 casi superati, inclusi Ctrl+Z/Y, selezione, scrittura, impostazioni, animazioni interrotte, riaggancio e ridimensionamento della barra. Include la sincronizzazione finale della cache di selezione dopo Annulla/Ripristina.
- Ultimo controllo mirato dopo la correzione API Android del lessico: 9 casi di scrittura superati.
- Un ulteriore caso distinto di memoria email/incognito è incluso nel gruppo precedente. Il JSON allegato associa ogni caso all’ultimo esito, senza contare due volte le riesecuzioni.
- Le verifiche preliminari hanno rilevato e fatto correggere il riconoscimento delle icone fuori viewport, la soglia dei refusi nei prefissi e una fixture con downTime non aggiornato tra gesti consecutivi.
- 85 espressioni compilate con ICU nativo. Rendering nativo Robolectric API 35 e controlli Compose; larghezze 320, 420 e 900 px.
- Esclusioni upstream conservate: dimostrazione Hangul nota come fallente e test di disponibilità degli URL XLink, elencati in gradle/keyant-regression.gradle.

## APK
Package it.keyant.keyboard, versionCode 97, versionName 0.6.70, non debuggable.
Integrità ZIP, firma e zipalign con allineamento 16 KiB verificati.
Firma SHA-256 uguale alla 0.6.69: bf7bc5998c63e50de960d4506499dce857cea819468673d0ca52d31bed527aa4.
Dimensione: 144484353 byte.
SHA-256: 8aa2ccf9e91bac8fd510847a155d7575dfe58892393ad718dbca2a1a85018bc2.
Ultimo commit del codice applicativo: 183fc4c4458cba530ab56a031de93e98e3e21240.

## Analisi statica
Lint NON è globalmente superato: 550 errori, 448 avvisi e 1 suggerimento preesistenti. Confronto strutturale con la 0.6.69: **zero nuove segnalazioni**, stessi conteggi. Il controllo ha trovato una nuova chiamata Stream.toList che richiedeva API 34; è stata sostituita con Collectors.toList, rieseguiti i test e rigenerato l’APK. Nessuna nuova baseline o soppressione usata per nascondere il problema.

## Limiti delle verifiche
Nessuna prova su Fold/Pixel fisico e nessuna misura FPS. One UI, editor web e app che limitano l’InputConnection richiedono riscontro sul telefono. Ctrl+Z/Y locale protegge una singola sostituzione di selezione nello stesso campo, con contesto estratto completo fino a 65.536 caratteri e scadenza di due minuti; non sostituisce una cronologia universale delle app. Password escluse; nessun contenuto salvato su disco.
Le teste sono illustrazioni sferiche con fronte/lati/nuca, non mesh anatomiche. Il lessico supplementare è finito e non promette copertura universale. Nessun collegamento reale OAuth o operazione su account personali dichiarato verificato.
I test usano dati sintetici. Video personale, chiavi e credenziali esclusi dagli archivi. Sorgenti e APK non contengono il backup dei dati del telefono.
