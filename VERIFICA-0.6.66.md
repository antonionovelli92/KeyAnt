# Verifica KeyAnt 0.6.66

431 test superati in 84 classi, ultima esecuzione per classe: zero fallimenti, errori e saltati. Suite 0.6.65 più regressioni 0.6.66, JVM isolate da 768 MiB. ICU nativo: 76 espressioni compilate, errore storico 66308 riprodotto e correzione conservata.

## Regressioni specifiche

- Crash riprodotto prima della correzione: ColorUtils.calculateContrast rifiutava il background traslucido #c0101116 della barra. Dopo la correzione tutti i quattro materiali funzionano con e senza superficie dei pulsanti.
- Testo scuro e contrasto verificato sul tema scolpito chiaro anche con Android in modalità scura. Rendering della pillola chiara ispezionato.
- China Rosso conserva i colori del corpo originale e cambia soltanto l’accento; gli altri tre materiali non hanno Cancella rosso. Rendering delle quattro varianti ispezionato.
- X emoji e GIF chiude la ricerca; freccia torna alla selezione emoji. Query separata dal messaggio. Il fixture verifica il comando EMOJI con dispatcher simulato e lo stato reale della barra.
- Comandi numeri/calendario dalla barra, anche con gesti disabilitati; apertura e chiusura ripetute senza inserire testo. Vecchio ordine personalizzato conservato con nuove voci disponibili.
- Trackball del livello ABC nascosta durante il pannello, invisibile anche dopo layout e nuovamente disponibile alla chiusura.
- Pixel del giorno corrente distinti su tre materiali; nessun pulsante Cancella o X nell’intestazione. Rendering del calendario ispezionato.
- Movimento monotono del pannello, nessun superamento della destinazione, arresto progressivo e continuità della velocità ammessa. Le regressioni precedenti coprono Fold affiancato, gesture inversa, split e input del tastierino.
- Pagina Pannelli laterali renderizzata a 1000×750: animazioni, dimensioni, luci e suoni raggiungibili nella stessa pagina; controllo suono persistente. Opzioni condivise deduplicate nella ricerca.
- Aggiornamenti diretti da schemi preferenze 2, 6, 8 e 9, conservando preferiti, impostazioni contestuali e ordine barra. Migrazioni idempotenti.
- Contesto bilingue lungo limitato alla parte recente; restano le regressioni precedenti su correzioni, digitazione rapida, doppie lettere, Maker, eventi, promemoria, privacy e Annulla.

## APK

Pacchetto it.keyant.keyboard; versione 0.6.66, codice 93, non debuggable. Integrità ZIP, allineamento 16 KiB e firma personale invariata verificati.

SHA-256 APK: fa44ae39bb6202c711d05e19bdbad1fa13b126f7303555428ffa0fd3275e05e2

Certificato SHA-256: bf7bc5998c63e50de960d4506499dce857cea819468673d0ca52d31bed527aa4.

## Limiti espliciti

Lint non superato: 550 errori, 448 avvisi e 1 suggerimento preesistenti. Zero nuove segnalazioni rispetto alla 0.6.65 confrontando ID, severità, messaggio e file; nessuna soppressione globale.

Prove Robolectric SDK 35 con rendering nativo e servizi/provider simulati. Nessun test fisico su Fold o Pixel e nessuna misura FPS. Nessuna prova su account Google reale, sincronizzazione remota o notifiche a telefono spento. La causa del crash del video non è accompagnata da stack trace: è stato riprodotto e corretto un crash deterministico dei quattro temi segnalati, senza attribuire con certezza ogni arresto allo stesso problema.

Nessuna modifica a OAuth, fatturazione, permessi o destinazioni dei dati in questa versione. Video personali, credenziali e chiavi di firma esclusi dagli archivi. Test e immagini di verifica usano dati sintetici. APK consegnata soltanto dopo pubblicazione e controllo degli allegati.
