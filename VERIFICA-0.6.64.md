# Verifica KeyAnt 0.6.64

388 test superati in 72 classi, ultima esecuzione per caso. Zero fallimenti, errori o saltati finali. Suite precedente più regressioni 0.6.64, JVM isolate da 768 MiB per le allocazioni grafiche native. Controllo ICU nativo: 57 espressioni compilate, errore storico 66308 riprodotto e correzione conservata.

## Casi verificati

- Tutte le combinazioni dei tre interruttori e della modalità unificata; salvataggio calendario senza chiamare Tasks, anche con le funzioni separate spente. Tema di default, colori indipendenti, sfumatura collegata ai due colori, ripristino delle scelte e verde di successo invariato.
- Frasi mezzora/mezz’ora, quarti d’ora, ore con minuti, durata/fine oltre mezzanotte e discordanza giorno/data. Conservazione del titolo e rifiuto delle frasi incomplete.
- Rimozione della sola frase confermata, identità connessione editor, testo cambiato, selezione e lettura troncata. Conferma verde preservata quando arriva testo vuoto. Nessuna rimozione quando la Task è salvata ma l’avviso fallisce.
- Tasks: singolo POST, assenza di due con avviso locale predefinito, ora nelle note; allarme solo dopo risposta positiva. Errori, permessi, esito incerto, mancato allarme, doppio tocco e privacy conservano i controlli precedenti.
- Palette calendario limitata all’account e a TYPE_EVENT, tonalità più vicina, fallback senza palette, colore scritto come EVENT_COLOR_KEY, promemoria con avviso all’inizio e preferenza distinta dagli eventi.
- Intent Android per altre app con istante esatto, titolo e frase; fallback condivisione testo esplicita. Nessuna dichiarazione di salvataggio dell’app destinataria.
- Fold simulato: entrambi i pannelli, tutte le animazioni disponibili, contenuto disegnato prima del primo tocco, gesto inverso dal tasto di avvio, annullamento gesto, input e split. Restano da verificare su GPU e touch fisici.
- Agenda: 24 ore, sovrapposizioni su colonne, fine a mezzanotte, eventi interi separati, inserimento testuale senza modifica del provider. Aggiornamenti e permessi coperti dalle regressioni precedenti.
- Studio e Maker: preferenze del tastierino isolate nella creazione, suono e tema trovabili, percorsi ricerca e gruppi Fold, GIF Unicode e chiusura, cronologia e ridisposizione.
- Autocorrezione: rifiuto di espansioni lunghe e parole distanti, conservazione di refusi vicini e accenti. Regressioni delle doppie lettere veloci e dei gesti già esistenti.

## APK e limiti

Versione 0.6.64, codice 91, non debuggable. Integrità ZIP, zipalign 16 KiB e firma personale invariata verificati. SHA-256: ce15d30cd9d8b795dfbc02ca6b1e134ff585be84de435d463f7e3b05431faa24.
Certificato SHA-256: bf7bc5998c63e50de960d4506499dce857cea819468673d0ca52d31bed527aa4.

Lint non superato: 550 errori, 448 avvisi e 1 suggerimento preesistenti. Zero nuove segnalazioni nel confronto ID, severità, messaggio e file; nessuna soppressione globale.

Le prove usano Robolectric SDK 35, rendering nativo e provider/rete simulati. Nessun test fisico su Fold/Pixel, nessuna misura FPS, nessuna prova di sincronizzazione Google o notifiche su telefono spento. Il collegamento Tasks è dichiarato funzionante dall’utente, non verificato da questo ambiente. Nessuna modifica dell’account OAuth o della fatturazione. Compatibilità delle app esterne da provare sui dispositivi. Test, screenshot e dati degli esempi sono sintetici; video personali e chiavi private esclusi dagli archivi.
