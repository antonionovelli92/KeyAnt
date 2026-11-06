# Verifica KeyAnt 0.6.71

- 150 test distinti, 21 classi: ultimo esito di ciascun test superato. Dettaglio nel JSON allegato.
- Giro esteso: 147 casi, una verifica di catalogo obsoleta (8 profili invece di 9), aggiornata e rieseguita. Nessuna modifica produttiva per nascondere il fallimento.
- Giri finali: casi funzionali e grafici rieseguiti dopo le correzioni; test di calendario unificato su provider Android simulato.
- 94 espressioni linguistiche compilate da ICU nativo. Test Java e ICU distinti.
- Lint: {'Error': 550, 'Warning': 448, 'Hint': 1}. Nessuna nuova segnalazione rispetto alla 0.6.70. Il lint globale resta in errore per problemi preesistenti: non dichiarato superato.
- APK: it.keyant.keyboard, 0.6.71, versionCode 98, non debuggable.
- Firma SHA-256: bf7bc5998c63e50de960d4506499dce857cea819468673d0ca52d31bed527aa4.
- Integrità ZIP e allineamento pagine 16 KiB verificati.
- SHA-256 APK: 1f8696255debdc11eb301d9571eccdbac93a7f6883f403c2863cdfc714d911dd.
- Dimensione: 160747404 byte.

## Copertura e limiti
Ricerca GIF ripetuta, X e origine; immagini tramite commitContent, URI non trasformati in testo, testo successivo e timestamp uguali, rifiuto dell'immagine senza incollare testo vecchio; privacy e clipboard preesistenti; parsing di connettivi, nomi propri, titoli protetti, indirizzi, intervalli/durate e date impossibili; percorso completo di conferma e inserimento nel calendario unificato; gesture/undo e scrittura; nuove superfici su cinque angoli.

Test Robolectric SDK 35, renderer grafico nativo; nessun telefono fisico collegato. L'accettazione dei media dipende dall'editor destinatario. Nessuna promessa di annullamento universale, comprensione linguistica senza ambiguità, o FPS misurati su Fold/Pixel.
