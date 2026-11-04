# KeyAnt 0.6.55 — pillola azioni e recupero della barra

## Problemi osservati

Il video del 4 novembre mostra il collegamento Tasks non completato, dettagli troppo piatti, la frase «evento per il 5 novembre alle 9 prendere il latte» senza data riconosciuta e perdita dei suggerimenti/accesso agli strumenti dopo un tentativo. La 0.6.54 gestiva soltanto date numeriche o oggi/domani con orario: non era sufficiente per la frase reale.

## Correzioni

- Corretto un crash nella formattazione del riepilogo Tasks con data: «Dettagli» era interpretato come pattern data. Coperto dal test di ritorno dopo consenso fallito.
- `ActionCard654` riusa `PillSurface`, `PillMotion` e `ToolSurface`. Controlli separati per giorno, ora, calendario, durata, avviso e luogo; scelta dell’ora con pulsanti del tema, senza NumberPicker di sistema. Le liste estese si aprono solo su richiesta.
- Un comando laterale resta disponibile nella pillola per tornare agli strumenti, anche durante una richiesta. Chiudi torna ai suggerimenti; la digitazione normale chiude la revisione. L’editing esplicito del titolo continua a consumare i tasti localmente.
- `KeyAntBar` rilascia lo stato esterno e ripristina suggerimenti/handle contestualmente alla chiusura o al reset. L’eventuale dissolvenza resta in un overlay visivo e non esegue callback che sostituiscono una nuova barra.
- Bozze in salvataggio, salvate o con esito incerto mantengono il blocco contro doppi invii anche dopo la chiusura. Nessun retry automatico di un esito incerto.
- Riconoscimento dei mesi italiani e giorni della settimana con ora esplicita; date impossibili rifiutate. Un mese senza anno già passato indica l’anno successivo; un giorno della settimana indica la prossima occorrenza, anche oggi. Data e ora restano visibili per il controllo.
- Il calendario scelto esplicitamente viene ricordato per le successive bozze; se non più scrivibile, viene rivalidata la destinazione.
- Se manca la data dell’evento, il pulsante «Quando?» apre la scelta; non rimane un «Salva» apparentemente inerte.
- Errori di collegamento Google conservati e mostrati nella pillola al ritorno; disponibile «Usa Calendario · con avviso». L’alternativa crea un evento calendario dopo conferma e non una Google Task.
- In Gesti e strumenti → Azioni dalla frase → App promemoria si può scegliere «Calendario · promemoria con avviso» come destinazione abituale. La preferenza precedente non viene cambiata automaticamente.

## Limiti dichiarati

La registrazione OAuth Google Cloud non è stata completata: nessuna modifica grafica o correzione della barra può sostituirla. Tasks diretto richiede ancora la configurazione documentata in `docs/GOOGLE_TASKS_SETUP.md` e consenso sul telefono. Il calendario locale funziona indipendentemente da OAuth e richiede permessi Android e un calendario scrivibile. Non vengono promessi salvataggi su account reali o fluidità fisica non misurata.

Nessuna modifica alle aree di tocco, al motore materiali, ai dizionari o agli archivi personali. Azioni contestuali sempre disattivabili. Questa revisione corregge il flusso dimostrato; non certifica l’assenza di qualsiasi difetto nell’intera tastiera.

Sorgenti completi, cronologia, verifiche e APK firmato allegati alla release. Gli archivi automatici GitHub contengono soltanto il ramo documentale.
