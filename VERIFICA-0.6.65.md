# Verifica KeyAnt 0.6.65

417 test superati in 79 classi, ultima esecuzione per classe. Zero fallimenti, errori o saltati finali. Suite precedente più regressioni 0.6.65, JVM isolate da 768 MiB per le allocazioni grafiche native. Controllo ICU nativo: 76 espressioni compilate, errore storico 66308 riprodotto e correzione conservata.

## Casi verificati

- Chiusura con X, icona ancora disponibile dopo oltre 40 secondi, aggiornamento della durata nella frase e riapertura. Testo selezionato con e senza comando esplicito: riconoscimento senza apertura automatica; salvataggio del testo selezionato e rimozione della sola selezione.
- Memoria Annulla utilizzabile una sola volta nello stesso editor e nello stesso punto, invalidata se il testo o la selezione cambiano. Nessun uso degli appunti. Ctrl+Z e Annulla della barra collegati al ripristino; Ctrl+X conserva Taglia. La scadenza cancella anche il contenuto dalla memoria.
- Dialer aperto con il numero corretto e rimozione del comando solo dopo apertura riuscita; testo preservato quando manca un’app disponibile. Non viene dichiarata una chiamata effettuata.
- Varianti creami/salvami/rammentami, giorni con e senza accento, mezzora/mezz’ora, refusi temporali limitati, durate in lettere e di un quarto d’ora. Distinzione fra 21 e 21:30 e 21 e 15; durata predefinita di 60 minuti, fine oltre mezzanotte e con data diversa.
- Sequenze consecutive tutto il giorno: intervallo UTC con fine esclusiva, cambio dell’ora legale, rifiuto di date impossibili o intervalli con buchi. Provider: una sola operazione evento ALL_DAY, nessun avviso a mezzanotte.
- Geocoder: indirizzo unico coerente accettato; ambiguità o indirizzo estraneo conservano il luogo originale. Servizio reale e disponibilità delle attività commerciali non verificati.
- Conferma standard verde, colore personale solo con entrambe le opzioni abilitate, superficie vetro e mantenimento del feedback dopo rimozione del testo. Le prove grafiche precedenti sono adattate al riflesso, alle 24 superfici e alla composizione dei nuovi temi traslucidi su sfondo bianco e nero, mantenendo contrasto, controllo del colore base e durata di visibilità. I test delle impostazioni seguono la nuova posizione del comando Disattiva trasparenze e il pulsante esplicito Usa questo tema; quello emoji cerca la query nella nuova pillola.
- Calendario richiamato tenendo e trascinando ABC nel livello simboli; marker accessibile del giorno corrente. Regressioni Fold: pannelli affiancati, contenuto visibile prima del tocco, gesto inverso, input e split.
- Catalogo Disegno: quattro nuovi temi, China originale invariato, anteprima senza applicazione implicita e pulsante Usa esplicito. Impostazioni azioni renderizzate sul Fold simulato. Ricerca emoji uniforme alla GIF; regressioni query Unicode e chiusura.
- Autocorrezione bilingue: proposta della lingua incoerente non applicata automaticamente, senza nascondere il suggerimento o annullare le correzioni personali confermate. Restano le regressioni precedenti su tocchi rapidi, doppie lettere e gesti.
- Suite precedente su destinazioni, unificata, colori calendario, Tasks e notifiche locali, errori/permessi/esiti incerti/doppi tocchi, privacy, Maker, impostazioni, agenda 24 ore e GIF.

## APK e limiti

Versione 0.6.65, codice 92, non debuggable. Integrità ZIP, zipalign 16 KiB e firma personale invariata verificati. SHA-256: 6ca3d34e93fb7037eb3ee29f5c4783fbaf3595e34e420b41bc2c242143ba1d3b.
Certificato SHA-256: bf7bc5998c63e50de960d4506499dce857cea819468673d0ca52d31bed527aa4.

Lint non superato: 550 errori, 448 avvisi e 1 suggerimento preesistenti. Zero nuove segnalazioni rispetto alla 0.6.64 nel confronto ID, severità, messaggio e file; nessuna soppressione globale.

Le prove usano Robolectric SDK 35, rendering nativo e provider/rete simulati. Nessun test fisico su Fold/Pixel, nessuna misura FPS, nessuna prova di sincronizzazione Google o notifiche su telefono spento. Il collegamento Tasks è dichiarato funzionante dall’utente, non verificato da questo ambiente. Nessuna modifica dell’account OAuth o della fatturazione. La sincronizzazione resta gestita da Android e dal servizio: il verde conferma il provider locale. Compatibilità delle app esterne da provare sui dispositivi. Test, screenshot e dati degli esempi sono sintetici; video personali e chiavi private esclusi dagli archivi.
