# KeyAnt 0.7.2 — alternanza delle pillole di accesso

VersionCode 129, aggiornamento diretto della 0.7.1 con firma personale originale.

La barra rivaluta i codici ricevuti e le nuove copie anche quando una risposta inline del gestore password è già attiva. La risposta originale resta in memoria come superficie opaca e torna disponibile dopo consumo, chiusura o scadenza dell'offerta, purché il campo sia ancora lo stesso. Le risposte inline tardive non coprono un codice più recente. La scelta manuale fra Authenticator e gestore password viene conservata durante l'interruzione; il cambio campo o la chiusura esplicita degli strumenti elimina la superficie precedente.

Le etichette del campo che indicano esplicitamente SMS, WhatsApp o email insieme a un codice di verifica escludono il collegamento Authenticator. I cambi dei metadati del campo vengono rivalutati anche senza una nuova risposta inline. Nei campi senza indicazioni del canale non si deduce il contenuto dell'intera pagina: l'arrivo di un codice riconosciuto è l'evento che aggiorna la pillola. I codici continuano a essere letti soltanto dalle notifiche consentite, senza nuovi permessi o letture dei messaggi in background.

Nei campi di verifica protetti, con pillole private consentite, il codice ricevuto è presentato con la dicitura generica «Codice ricevuto»: nessun numero nell'anteprima e nessuna aggiunta alla cronologia da questo percorso. La modalità incognito attivata manualmente mantiene l'esclusione delle notifiche. Gli interruttori esistenti per codici e suggerimenti appunti restano rispettati. Il tocco controlla che codice, campo e connessione siano ancora quelli dell'offerta; una vecchia pillola non può consumare il codice successivo.

La pillola Authenticator ora ha una capsula compatta centrata, alta 40 dp e larga quanto il contenuto entro 300 dp. La larghezza si adatta agli schermi stretti; i controlli laterali restano di 44 dp, separati dalla capsula. Vengono mantenuti il tema e il glow.

Nessuna nuova modifica al vocale, ai temi o alla geometria dei tasti. Nessuna prova effettuata nell'app PayPal reale o sul telefono fisico. Il riconoscimento dipende dai dati che il campo e le notifiche rendono disponibili.

Nota per la riproduzione dei test: ShadowClipboardManager assegna un timestamp basato su uptime. Il caso copia/notifica imposta nella fixture la base temporale prevista da Android (System.currentTimeMillis), senza modificare il codice di produzione. Riferimento: https://developer.android.com/reference/android/content/ClipDescription#getTimestamp()
