# Configurare Google Tasks per KeyAnt 0.6.54

## Stato reale

Il client Android usa Google Identity Services `AuthorizationClient` (play-services-auth 22.0.0), selezione delle liste e Tasks REST API. Nessun server e nessun client secret nell’APK. La registrazione Google Cloud **non è stata completata in questa sessione**: la console ha restituito “Site Unavailable”. I test usano un trasporto simulato, non l’account personale.

Il consenso sul telefono è necessario: la sola installazione dell’APK non collega l’account. Finché la configurazione manca, non considerare funzionante il salvataggio diretto in Tasks. Nei dettagli rimane disponibile “Copia e apri Tasks (alternativa)”. Il calendario Android funziona indipendentemente.

## Configurazione una volta sola

1. Apri https://console.cloud.google.com/ e seleziona o crea il progetto personale destinato a KeyAnt. Non attivare la fatturazione per questi passaggi.
2. In **API e servizi → Libreria**, abilita **Google Tasks API**.
3. In **Google Auth Platform → Branding**, configura il nome **KeyAnt**, l’email di assistenza e il contatto sviluppatore dell’account che gestisce il progetto. Homepage: repository KeyAnt. Pubblica/indica l’informativa specifica `docs/GOOGLE_TASKS_PRIVACY.md`; completa gli eventuali campi obbligatori della console con dati reali.
4. In **Audience**, per l’uso personale scegli **External / Testing** e aggiungi come test user l’account Google che userai sul telefono. Non pubblicare in produzione per completare questa prova. In modalità di test Google può richiedere nuovamente il consenso: non è una garanzia di collegamento permanente.
5. In **Data Access**, aggiungi soltanto lo scope `https://www.googleapis.com/auth/tasks`. Google non offre uno scope limitato alla sola creazione: il consenso copre Tasks, ma KeyAnt usa elenco delle liste e inserimento esplicito, senza leggere tutte le attività o cancellarle.
6. In **Clients → Create client**, scegli **Android** e inserisci:

| Campo | Valore |
|---|---|
| Nome | KeyAnt personale |
| Package | `it.keyant.keyboard` |
| SHA-1 firma APK | `97:DE:F4:80:07:79:06:06:1F:E7:49:DC:07:93:7C:BC:87:58:F5:9D` |

Non creare una chiave API in sostituzione del client OAuth. Non è necessario incollare un client secret nell’app. Questo flusso on-device è riconosciuto dalla coppia package/firma; non richiede un backend né un client web per ottenere un server auth code.

7. Installa l’APK firmato della release. In **KeyAnt → Gesti e strumenti → Azioni dalla frase**, premi **Collega o rinnova Google Tasks**, scegli l’account registrato e completa il consenso Google.
8. In un’app scrivi `ricordami di comprare il pane domani`, tocca l’icona e apri **Dettagli** per scegliere la lista. Controlla il giorno e premi **Salva**. Il messaggio “Aggiunto” appare solo dopo una risposta positiva dell’API.

## Limiti e gestione degli errori

- Tasks API registra soltanto il **giorno**, non l’ora della notifica. Se serve un avviso a un’ora esatta, impostalo nell’app Tasks oppure crea un evento calendario con avviso.
- Il token resta in memoria per al massimo 45 minuti. Alla scadenza si rinnova con il pulsante di collegamento; Google può effettuare il rinnovo senza un nuovo consenso se l’accesso resta valido.
- Un errore di configurazione Google (codice 10) indica un problema di progetto/client/firma; non risolverlo incollando token o segreti nella tastiera.
- Un timeout dopo l’invio ha esito incerto: KeyAnt blocca il reinvio nella stessa bozza e chiede di controllare Tasks. Non esegue retry automatici del POST.
- “Rimuovi accesso da questa sessione” svuota il token locale. Per revocare anche il consenso Google, usa le connessioni alle app di terze parti del tuo Account Google.
- Il pannello tiene i dati solo in memoria e li riassocia al campo e al testo originali entro due minuti. Un cambio di app/campo/testo impedisce il ripristino della bozza.

## Fonti ufficiali

- https://developer.android.com/identity/authorization
- https://developers.google.com/workspace/tasks/reference/rest/v1/tasks/insert
- https://developers.google.com/workspace/tasks/reference/rest/v1/tasks
- https://developers.google.com/workspace/tasks/reference/rest/v1/tasklists/list
