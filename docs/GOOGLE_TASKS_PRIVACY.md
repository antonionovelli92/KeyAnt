# KeyAnt — informativa sull’integrazione Google Tasks

Questa informativa riguarda esclusivamente l’integrazione Google Tasks introdotta in KeyAnt 0.6.54.

Il riconoscimento delle frasi avviene sul dispositivo. KeyAnt non invia automaticamente a Google il testo digitato. Dopo una richiesta esplicita di collegamento, Google gestisce la selezione dell’account e il consenso OAuth. KeyAnt riceve un token di accesso temporaneo, mantenuto soltanto nella memoria del processo e non incluso in backup, log o sorgenti pubblici.

Quando apri la scheda Tasks con accesso disponibile, KeyAnt legge gli identificatori e i nomi delle liste per consentire la scelta della destinazione. Solo premendo Salva invia a Google Tasks il titolo controllato nella scheda, la lista scelta e l’eventuale giorno. Non esegue scansioni delle attività, cancellazioni, condivisioni con un server KeyAnt o invii automatici durante la digitazione.

Lo scope richiesto è `https://www.googleapis.com/auth/tasks`; il suo potere è più ampio delle due operazioni effettivamente usate dall’app. Puoi rifiutare il consenso e continuare a usare la tastiera, disattivare le azioni contestuali, svuotare l’accesso della sessione o revocare KeyAnt nelle connessioni del tuo Account Google.

Le bozze e i nomi delle liste restano in memoria; chiudere il processo li elimina. Le attività confermate restano nel tuo account Google e vanno gestite o eliminate tramite Google Tasks. Il calendario Android usa un percorso separato, tramite permessi del dispositivo, senza Tasks API.

Per problemi tecnici relativi al codice: issue del repository https://github.com/antonionovelli92/KeyAnt . Non inserire token, credenziali o contenuti personali nelle issue pubbliche.
