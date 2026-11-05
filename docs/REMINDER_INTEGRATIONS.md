# Destinazioni e limiti dei promemoria — ricerca 5 novembre 2026

| Destinazione | Salvataggio diretto dalla pillola | Orario | Avviso |
|---|---|---|---|
| Google Tasks | Sì, dopo OAuth | API pubblica: solo data; ora nelle note con avviso locale | KeyAnt se abilitato |
| Calendario Android sincronizzato (Google, Samsung o altro account disponibile) | Sì, con permessi e calendario scrivibile | Inizio/fine/durata/fuso | Calendario, senza aggiunta KeyAnt |
| Altra app con ACTION_CREATE_REMINDER | Passaggio dati; risultato non restituito | EXTRA_TIME in millisecondi Unix | Gestito dall’app, da confermare lì |
| Altra app via condivisione testo | Passaggio testo, non salvataggio verificabile | Dentro la frase | Dipende dall’app |
| Solo sul telefono | Sì, con notifiche/sveglie autorizzate | Istante locale programmato | KeyAnt |

## Perché Google Tasks non salva l’ora

La risorsa Task e il discovery document ufficiale dichiarano esplicitamente che due registra soltanto la data e scarta la porzione oraria. Non esiste nel contratto pubblico un campo reminderDateTime o equivalente. Cambiare scope OAuth, client Android/web o formattazione RFC3339 non aggiunge capacità alla risorsa. L’app Google permette orari, ma questo non dimostra che l’API pubblica li esponga.

Fonti primarie:
- https://developers.google.com/workspace/tasks/reference/rest/v1/tasks
- https://developers.google.com/workspace/tasks/reference/rest/v1/tasks/insert
- https://github.com/googleapis/google-api-python-client/blob/main/googleapiclient/discovery_cache/documents/tasks.v1.json
- https://support.google.com/tasks/answer/9901136

La segnalazione pubblica https://issuetracker.google.com/issues/447592214 descrive lo stesso problema. Non è una promessa di correzione né una data di rilascio.

## Alternative valutate

Android ACTION_CREATE_REMINDER, API 30: consente titolo, testo, EXTRA_TIME; output dichiarato Nothing. È implementato come passaggio opzionale verso app compatibili, non come prova che Google Tasks o Samsung Reminder salvino senza conferma.
https://developer.android.com/reference/android/content/Intent#ACTION_CREATE_REMINDER

Microsoft To Do espone isReminderOn e reminderDateTime nella propria API. Il limite non è universale per tutte le app. Una futura integrazione diretta richiederebbe OAuth Microsoft, gestione scadenze e test propri; non è inclusa in questa versione.
https://learn.microsoft.com/en-us/graph/api/resources/todotask?view=graph-rest-1.0

Non vengono usati endpoint privati, automazione della schermata Google, raccolta cookie o accessibilità per simulare tocchi. Non è stato trovato un metodo pubblico Google verificabile per creare senza altre schermate una Task con notifica oraria nativa.

## Avviso locale senza duplicazione predefinita

Con avviso KeyAnt attivo: POST Task senza due, indicazioni temporali nelle note, poi programmazione dell’allarme dopo ID confermato da Google. Se manca il permesso non si avvia la scrittura; se l’allarme fallisce dopo il POST, stato parziale visibile e nessun secondo POST automatico. La scadenza giornaliera è opt-in: se attivata, può introdurre l’avviso Google delle attività con sola data.

Gli avvisi KeyAnt non si sincronizzano con modifiche/completamenti in Tasks e restano sul telefono che li ha creati. Non vengono creati avvisi KeyAnt per gli eventi del calendario. Un’app calendario può comunque avere proprie regole o notifiche: non possiamo annullarle globalmente.

## Colori calendario

Si risolve account_name/account_type del calendario selezionato, poi una chiave Colors di TYPE_EVENT dello stesso account. Si scrive solo Events.EVENT_COLOR_KEY; nessuna modifica a EVENT_COLOR riservato al sync adapter. Se la tavolozza non esiste, il colore predefinito del calendario viene mantenuto.
https://developer.android.com/reference/android/provider/CalendarContract.EventsColumns#EVENT_COLOR_KEY
https://developer.android.com/reference/android/provider/CalendarContract.ColorsColumns

## Secondo telefono

Lo stesso APK firmato usa la stessa identità package/certificato. In fase di test OAuth occorre aggiungere l’altro account agli utenti di test del progetto esistente; ogni persona concede accesso ai propri Tasks. Non occorre un nuovo progetto per ogni dispositivo. Per distribuzione pubblica possono essere richieste verifica dell’app e requisiti Google. Il codice non aggira il blocco 403.

## Modalità unificata e disattivazione

Tre interruttori indipendenti filtrano i riconoscimenti. Calendario unificato, opt-in, riabilita le due famiglie temporali e forza la destinazione calendario senza usare Tasks o app alternative. Telefono rimane indipendente. Le scelte di destinazione e colore originali non vengono sovrascritte. Il controllo viene ripetuto alla conferma e prima della scrittura asincrona.

## 0.6.65 · Stato locale e sincronizzazione

La scrittura ALL_DAY usa UTC e fine esclusiva. La richiesta ContentResolver.requestSync è successiva al successo del provider e rispetta master sync e sync dell’account; non usa IGNORE_SETTINGS o MANUAL. Un errore di sincronizzazione non fa ripetere l’inserimento. Il permesso READ_SYNC_SETTINGS serve soltanto a rispettare quelle impostazioni.

https://developer.android.com/reference/android/content/ContentResolver
https://developer.android.com/identity/providers/calendar-provider

La ricerca luogo è opt-in, dopo la conferma, solo sul testo del luogo, tramite Geocoder asincrono Android 33+. Nessuna chiave geografica incorporata, nessun GPS. Su versioni inferiori si mantiene il luogo originale. Il provider geografico può usare la rete e non garantisce copertura o precisione: si scartano risultati multipli e non coerenti.
https://developer.android.com/reference/android/location/Geocoder
