# KeyAnt — informativa sull’integrazione Google Tasks

Questa informativa riguarda esclusivamente l’integrazione Google Tasks dalla versione KeyAnt 0.6.56.

Il riconoscimento delle frasi avviene sul dispositivo. KeyAnt non invia automaticamente a Google il testo digitato. Dopo una richiesta esplicita di collegamento, Google gestisce la selezione dell’account e il consenso OAuth. KeyAnt riceve un token di accesso temporaneo, mantenuto soltanto nella memoria del processo e non incluso in backup, log o sorgenti pubblici.

Quando carichi le liste dalle impostazioni o confermi la pillola con accesso disponibile, KeyAnt legge gli identificatori e i nomi delle liste. La lista preferita viene ricordata tramite il suo identificatore. Solo la conferma della frase invia a Google il titolo, la lista, le indicazioni nelle note (orario/fine prevista/luogo se presenti) e l’eventuale giorno. Non esegue scansioni delle attività, cancellazioni, condivisioni con un server KeyAnt o invii automatici durante la digitazione.

Lo scope richiesto è `https://www.googleapis.com/auth/tasks`; il suo potere è più ampio delle due operazioni effettivamente usate dall’app. Puoi rifiutare il consenso e continuare a usare la tastiera, disattivare le azioni contestuali, svuotare l’accesso della sessione o revocare KeyAnt nelle connessioni del tuo Account Google.

Le bozze e i nomi delle liste restano in memoria; chiudere il processo li elimina. Le attività confermate restano nel tuo account Google e vanno gestite o eliminate tramite Google Tasks. Il calendario Android usa un percorso separato, tramite permessi del dispositivo, senza Tasks API.

Per gli avvisi orari il telefono conserva nelle preferenze private titolo, istante e identificatore degli avvisi in attesa. La registrazione avviene dopo il salvataggio della Task. La consegna o l’annullamento rimuove il record. Il backup dell’app è disabilitato. Si possono annullare tutti gli avvisi locali dalle impostazioni KeyAnt. I cambiamenti successivi in Google Tasks e gli avvisi di questo telefono sono indipendenti.

Per problemi tecnici relativi al codice: issue del repository https://github.com/antonionovelli92/KeyAnt . Non inserire token, credenziali o contenuti personali nelle issue pubbliche.

Dalla 0.6.64 la notifica oraria è una preferenza esplicita. Con avviso locale attivo la scadenza giornaliera Google è omessa di default. Il comando Android per altre app passa solo la frase confermata, il titolo e l’eventuale istante; non legge i dati di quelle app e non considera il lancio come salvataggio.
