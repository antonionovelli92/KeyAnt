# KeyAnt 0.6.54 — azioni nella tastiera e risposta dei materiali

## Calendario

La modalità diretta usa una scheda compatta nella barra dei suggerimenti, senza cambiare l’altezza della tastiera, senza aprire il precedente dialogo generico. Il titolo si modifica con la tastiera; i dettagli occupano l’area dei tasti e comprendono mese/giorno, ora/minuti, calendario di destinazione, durata, luogo e avviso. Il calendario e l’account scelti sono indicati nel riepilogo. Il primo consenso Android apre ancora una finestra di sistema; tornati al campo originale, la bozza viene riproposta, senza salvare automaticamente.

Il successo rimane visibile nella scheda. Doppio tocco, chiusura della vista e callback tardive condividono la stessa operazione. Le esclusioni per password, incognito, no-learning e indirizzi restano attive. La funzione resta accesa di default e disattivabile; l’apertura nell’app calendario rimane disponibile tramite l’impostazione esistente.

## Google Tasks

Implementati consenso Google, liste, giorno e inserimento esplicito dalla tastiera. **Registrazione Google Cloud ancora da completare**: vedi [configurazione](docs/GOOGLE_TASKS_SETUP.md). Non è stato eseguito un salvataggio nell’account reale. Nessuna promessa di orario: Tasks API permette soltanto il giorno. L’alternativa Copia e apri è accessibile dai dettagli.

## Materiali

Dodici temi esistenti, nessuna duplicazione del catalogo. Impulso locale di 420 ms, risposta elastica selettiva al rilascio, inclinazione legata al punto di contatto, compressione di Candy/Denim, riflessi diagonali su superfici lucide, increspature Ocean, striature cromatiche Terminal e luce sui fianchi. Resina/vetro usano strati semitrasparenti; font distinti per carattere del materiale. Renderer condiviso con l’anteprima, nessuna modifica alle hitbox o ritardo dell’evento di digitazione. Le animazioni rispettano la riduzione movimento Android.

Il filmato allegato è una sequenza temporale del renderer Android nei test, non una registrazione o misurazione FPS sul telefono. Resta da verificare la percezione sul Fold e sul Pixel reali.
