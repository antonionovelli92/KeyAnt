# Verifica KeyAnt 0.6.68

557 test superati in 94 classi, considerando l'ultima esecuzione per classe: zero fallimenti, errori e saltati. Test Robolectric SDK 35 con rendering nativo e JVM isolate. Controllo ICU nativo: 85 espressioni compilate, errore storico 66308 riprodotto e correzione conservata.

## Esecuzioni

Eseguito l'intero gate selezionato tools/verify_0668.sh per i test; il primo passaggio ha segnalato sei asserzioni da riesaminare. Quattro conteggi globali erano rimasti precedenti ai cinque temi aggiunti. Il controllo del vetro derivato è stato portato sui pixel realmente renderizzati, con il medesimo requisito di contrasto minimo 4,5:1. Il caso della barra scorrevole iniziava sul bordo vuoto di un pulsante quasi tutto fuori schermo: ora parte dal comando realmente visibile, rinominato come comando personalizzato. Le classi interessate sono state rieseguite; TEST-RESULTS-0.6.68.json raccoglie l'ultimo risultato di ciascun caso. Non sono stati esclusi casi per nascondere questi errori.

Restano le esclusioni storiche del gate: dimostrazione upstream Hangul già nota e controllo di disponibilità di un URL esterno. I test sono distinti da lint e compilazione.

## Controlli specifici

- Calendario dalla prima icona: trascinamento senza eseguire il tap sottostante, annullamento e opzione calendario disattivata; ?123/ABC mantengono il cambio livello quando è selezionato il gesto dalla barra.
- Modalità con attesa: movimento iniziale nella direzione corretta conservato, tap singolo invariato; gesti immediati, direzione errata, touchpad e tocchi sovrapposti coperti dalle regressioni.
- Ultimo comando visibile, anche personalizzato e prima della fine dello scorrimento; tap, pressione lunga, RTL, multitocco, ridimensionamento, gesto corto e cancellazione della transizione.
- Interruttori indipendenti ON di default; tap della freccia disponibile a swipe disattivato. Una preferenza condivisa in più pagine e un solo risultato di ricerca.
- Affiancamento calendario indipendente dai numeri, default OFF, layout ampio orizzontale e spazio sufficiente. Gesto inverso, split, ripristino delle coordinate, numeri visibili, cancellazione e Invio senza chiusure involontarie.
- L'icona contestuale cede larghezza alla pillola e torna con la X; conservati orientamento, accessibilità e dimensione originaria. Regressioni di testo selezionato, Undo, privacy e salvataggi simulati mantenute.
- Otto materiali derivati: colori e inchiostri del preset originale; popup confrontati pixel per pixel nei due modi di luminosità. Profili China, barre e trackball coordinate; test su Maker e ripristino delle trasparenze.
- Dieci presentazioni della barra: sei alternative nuove e quattro esistenti, ordine dei comandi conservato, anteprima senza cambiare selezione o cronologia. Impostazioni a 420×900 e catalogo a 1000×750 ispezionati.
- Composizione, correzione, Annulla, lettere doppie rapide sul telefono e Fold, risposta tardiva del suggeritore, isolamento dei campi privati e intero gruppo InputLogicTest selezionato.

[Immagini di verifica](docs/INTERFACCIA-0.6.68.md).

## APK verificata

Pacchetto it.keyant.keyboard, versione 0.6.68, codice 95, non debuggable. ABI: arm64-v8a, x86_64. Integrità ZIP, allineamento 16 KiB e firma personale verificati.

SHA-256 APK: `ce15f04a82d68e113c8c6870fb1a4128e1a6713c3e3b22e654d7dfd8ebe13c17`

Certificato SHA-256: `bf7bc5998c63e50de960d4506499dce857cea819468673d0ca52d31bed527aa4`

## Lint e limiti

Lint non superato: {'Error': 550, 'Warning': 448, 'Hint': 1}. Confronto con la sorgente 0.6.67 usando ID, severità, messaggio e file, ignorando solo gli spostamenti di riga: 0 nuove segnalazioni, 0 rimosse. Nessuna soppressione globale aggiunta.

Nessuna prova fisica sul Fold o Pixel e nessuna misura FPS. Nessuna prova con account Google reali, sincronizzazione remota o notifiche a schermo spento; provider e trasporti nei test sono simulati. Nessuna modifica ai permessi, OAuth, notifiche, destinazioni dei dati o motore di correzione in questa revisione. I test di digitazione sono controlli di regressione, non una nuova promessa di previsione del testo.

La preparazione locale non prova che la release sia pubblicata: la pubblicazione e il confronto del download con la SHA-256 sopra sono un passaggio separato. Chiavi, credenziali e registrazioni personali sono escluse dagli archivi pubblici.
