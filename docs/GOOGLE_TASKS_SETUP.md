# Configurare Google Tasks per KeyAnt 0.6.59

## In parole semplici

OAuth è il sistema con cui autorizzi KeyAnt a usare Google Tasks. Non è una password da comprare e non devi cercare una chiave segreta sul telefono. Prima Google deve conoscere l’app tramite una registrazione nel progetto Cloud: quella configurazione si fa una volta per l’app e la sua firma, non per ogni promemoria.

**Nell’app:** Gesti e strumenti → Azioni dalla frase → Come collegare Google Tasks. Il pulsante Copia dati dell’app prepara package e SHA-1 pubblici dell’APK effettivamente installato. Non copiare né inviare password o token. Questa guida non significa che la registrazione sia stata completata.

## Stato reale

Il client Android usa Google Identity Services `AuthorizationClient` (play-services-auth 22.0.0), selezione delle liste e Tasks REST API. Nessun server e nessun client secret nell’APK. La registrazione Google Cloud **non è stata completata in questa sessione**: la console ha restituito “Site Unavailable”. I test usano un trasporto simulato, non l’account personale.

Il consenso sul telefono è necessario: la sola installazione dell’APK non collega l’account. Finché la configurazione manca, non considerare funzionante il salvataggio diretto in Tasks. Il calendario Android funziona indipendentemente.

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
8. Sotto il collegamento premi **Carica liste Tasks** e scegli **Lista Tasks**. L’opzione automatica usa la prima lista restituita da Google. Se una lista scelta viene eliminata, KeyAnt richiede una nuova scelta prima dell’invio.
9. Scrivi «ricordami di prendere pasticche tra un quarto d’ora». Tocca l’icona luminosa, verifica titolo e orario nella pillola e tocca la spunta. Al primo utilizzo Android può chiedere accesso alle notifiche e agli avvisi esatti. Tornando alla tastiera, verifica la frase e conferma di nuovo.

## Salvataggio e avvisi

Google Tasks registra il giorno della scadenza. Per un orario esplicito KeyAnt programma un avviso locale dopo la risposta positiva del servizio. Sul telefono puoi annullare tutti gli avvisi locali nella stessa pagina delle impostazioni. La cancellazione o modifica dell’attività nell’app Google Tasks non aggiorna gli avvisi locali già programmati. Anche dopo un riavvio l’app riprogramma gli avvisi registrati. Permessi, canale Android e impostazioni delle notifiche del dispositivo influiscono sulla consegna.

Il token di sessione dura al massimo 45 minuti. Un errore Google di configurazione (codice 10) richiede di verificare progetto, package e firma. Un timeout dopo l’invio può lasciare incerto l’esito. Controlla la lista prima di riscrivere la frase. La pillola blocca i doppi invii della stessa proposta. Un cambio di campo o di testo invalida la proposta.

## Calendario

In **App promemoria** puoi scegliere **Calendario · promemoria con avviso**. **Carica calendari** permette di scegliere un calendario scrivibile dopo il consenso Android. La conferma crea l’evento e l’avviso nello stesso salvataggio. Per un promemoria l’avviso è all’ora indicata. Per un normale evento il preavviso predefinito è di dieci minuti se il calendario lo supporta. L’uso dell’app calendario esterna apre il suo editor.

## Fonti

- https://developer.android.com/identity/authorization
- https://developers.google.com/workspace/tasks/reference/rest/v1/tasks
- https://developers.google.com/workspace/tasks/reference/rest/v1/tasks/insert
- https://developer.android.com/develop/background-work/services/alarms/schedule

## Diagnosi 0.6.57
Il risultato della scelta account viene decodificato anche se Android ritorna RESULT_CANCELED, così un errore restituito da Google mantiene il proprio codice. Scope non concesso e token assente sono distinti. La scelta dell’account da sola non prova il consenso a Tasks. Il collegamento reale non è stato verificato: l’accesso alla console Cloud dall’ambiente di lavoro restituisce Site Unavailable. Se il collegamento fallisce, il messaggio rimane nell’anteprima e nelle impostazioni. Non vengono inviati testo o token nei log di diagnosi.

## Diagnosi 0.6.58: codice 8
Nel nuovo video 37191 compare codice 8. Google lo definisce INTERNAL_ERROR; non dimostra da solo che il client OAuth sia configurato male. Codice 10 significa invece DEVELOPER_ERROR. L’app conserva entrambi separatamente e offre Riprova collegamento per 8/7. Un nuovo tentativo richiede un tocco, non parte in ciclo. Se l’8 persiste servono verifica della registrazione package/SHA-1, disponibilità/aggiornamento Play Services e log sul dispositivo; non attribuire una causa senza evidenza. Nessun salvataggio viene ritentato automaticamente.
Fonte: https://developers.google.com/android/reference/com/google/android/gms/common/api/CommonStatusCodes.

## Diagnosi 0.6.59
Il video 37196 riproduce codice 8 dopo la selezione account. Il riconoscimento della frase arriva alla proposta; il fallimento osservato è nell’autorizzazione. Console Cloud ricontrollata: Site Unavailable. Nessun connettore disponibile individuato per creare il client OAuth Android. La guida nell’app rende concreta la configurazione da completare, ma non risolve da sola il collegamento e non modifica i permessi Google.
