# KeyAnt 0.6.52 · Azioni integrate e transizioni morbide

Riprende integralmente il lavoro della 0.6.51 rimasto senza release pubblicata: sei temi Materie d’autore, relativi materiali nel Maker, riconoscimento locale dei comandi e alleggerimento dei calcoli ripetuti del tocco. La 0.6.51 è conservata nello storico come punto di ripristino.

## Azioni dalla frase

In **Gesti e strumenti → Azioni dalla frase → Azioni contestuali** la funzione è **attiva di default**. Spegnendola si interrompe il riconoscimento e la freccia mantiene il comportamento degli strumenti; riaccendendola riprende il riconoscimento. Nessuna migrazione forza su attivo una preferenza già disattivata.

- `Ricordami di comprare il pane` propone un promemoria.
- `Segna sul calendario cena domani alle 20` propone un evento.
- `Chiama +39…` propone il telefono; con un nome si sceglie il contatto.

Il tocco apre una conferma, il trascinamento continua ad aprire la barra strumenti. Le parole suggerite e le dimensioni della barra mantengono il loro posto. Password, incognito, indirizzi, selezioni e campi che vietano l’apprendimento restano esclusi.

**Google Calendar** riceve l’evento precompilato, da verificare e salvare. **Google Tasks** usa **Copia e apri Tasks**: incolla e imposta la scadenza in Tasks; questa versione non crea attività via API. Le app di destinazione sono selezionabili. La funzione telefono apre il tastierino e non chiama automaticamente.

## Movimento e integrazione

- Freccia, promemoria, calendario e telefono si fondono gradualmente in 180 ms. Un cambio durante il movimento riparte dalla miscela già visibile.
- Nessun salto dell’opacità del pulsante; aggiornare il testo della stessa proposta non ricrea l’icona e non riavvia l’animazione.
- Conferma con ingresso da 200 ms e uscita da 160 ms, piccolo spostamento e scala; una sola superficie visibile, senza doppio oscuramento.
- Contenuto della conferma scorrevole in orizzontale e su display bassi, con pulsanti separati dal contenuto.
- Le animazioni rispettano la preferenza di movimento delle pillole e la disattivazione delle animazioni di sistema. I movimenti dell’icona terminano quando la barra viene nascosta o scollegata.

## Conservazione e verifica

Package `it.keyant.keyboard`, versione `0.6.52`, versionCode `79`. Installare sopra la versione esistente, senza disinstallare. Nessun azzeramento di memoria personale, appunti o calibrazione.

I sei temi sono descritti in [AGGIORNAMENTO_0.6.51.md](AGGIORNAMENTO_0.6.51.md). Risultati verificati in [VERIFICA-0.6.52.md](VERIFICA-0.6.52.md); procedure di ripristino in [ROLLBACK-0.6.52.md](ROLLBACK-0.6.52.md). La fluidità sul Fold fisico e il passaggio alle app installate richiedono la prova sul dispositivo.
