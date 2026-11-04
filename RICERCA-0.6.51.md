# Riferimenti e decisioni · 0.6.51

Consultazione: 4 novembre 2026. Tre registrazioni fornite dall’utente: nuovi materiali Clink (134 s), presentazione Clink 2.0 e NuKey Next Move. Esaminati fotogrammi lungo la timeline e dettagli a risoluzione originale di Letterpress, resina marina, opale e terminale.

## Materiali

La collezione Materie d’autore contiene sei realizzazioni native: Letterpress Cotone (avorio granuloso e serif blu), Terminal Fosforo (cornice doppia, verde e scansione), Riviera (resina con spiaggia, schiuma e riflesso), Opale (interferenze cromatiche), Arcade Rubino (calotte bombate, modificatori gialli e invio blu), Rame Spazzolato (linee metalliche e bordo lucido). Sono adattamenti ai layout KeyAnt, non asset estratti né copie dichiarate pixel per pixel. Le finiture usano lo stesso renderer nelle anteprime, nel Maker e nella tastiera. Non vengono scaricati dati mentre si digita.

Documentazione ufficiale Clink: https://www.anti.ltd/docs/clink/look — materiali, anteprime e personalizzazione. NuKey, scheda dello sviluppatore: https://apps.apple.com/om/app/nukey/id6804797991 — controlli, feedback e strumenti; il flusso Next Move è osservato nel video fornito, non dedotto come API Android disponibile.

## Azioni contestuali Android

- Android Common Intents: https://developer.android.com/guide/components/intents-common — ACTION_INSERT con Events.CONTENT_URI per presentare un evento modificabile; ACTION_DIAL per aprire il tastierino senza effettuare la chiamata.
- Google Tasks tasks.insert: https://developers.google.com/workspace/tasks/reference/rest/v1/tasks/insert — la creazione via API richiede OAuth e lo scope tasks. Non è stato trovato un contratto pubblico verificabile equivalente all’intent di Calendar per compilare Tasks.
- Google Tasks, aggiunta manuale: https://support.google.com/tasks/answer/7675838?co=GENIE.Platform%3DAndroid&hl=en

KeyAnt non ha un client OAuth Tasks configurato: viene quindi offerto esplicitamente **Copia e apri Tasks**, non un falso salvataggio automatico. L’app copia il contenuto solo dopo la conferma e apre Tasks; l’utente incolla, sceglie la scadenza e salva. Le altre app possono essere scelte attraverso il contratto Android di condivisione testo. Questa limitazione resta visibile nelle impostazioni e nella conferma.

## Riconoscimento e scrittura

Regole locali per comandi espliciti in italiano, sul testo prima del cursore (massimo 240 caratteri letti dopo una pausa di 100 ms). Nessun modello remoto né cronologia dei comandi. Un’offerta scade dopo 20 secondi; finisce anche a fine frase, con un cambio d’argomento riconosciuto o oltre 24 parole/180 caratteri. Non è una comprensione semantica generale. Date senza ambiguità: oggi, domani, dopodomani, gg/mm[/aaaa], con ore/alle HH[:MM]. Negli altri casi si sceglie giorno e ora prima di proseguire.

Le ottimizzazioni di scrittura sostituiscono costruzioni ripetute di espressioni regolari con Pattern riutilizzabili. Soglie, geometria, correzione, memoria e calibrazione restano identiche alla 0.6.50. Nessun incremento percentuale di precisione è dichiarato senza misure su dispositivo.
