# Integrazioni calendario e Google Tasks — 4 novembre 2026

## Fonti ufficiali consultate

- Android Calendar Provider: https://developer.android.com/identity/providers/calendar-provider
- Google Identity Services / AuthorizationClient: https://developer.android.com/identity/authorization
- Risorsa Google Tasks (campo `due`): https://developers.google.com/workspace/tasks/reference/rest/v1/tasks
- Inserimento attività: https://developers.google.com/workspace/tasks/reference/rest/v1/tasks/insert

## Decisioni implementate

Il Calendar Provider supporta inserimento diretto con i permessi calendario. KeyAnt richiede accesso solo dalla conferma evento, interroga i calendari scrivibili e usa l’identificativo scelto. Inizio, fine e fuso orario vengono passati esplicitamente. I promemoria sono record separati collegati al nuovo evento tramite back-reference nella stessa applyBatch. La riuscita indica salvataggio nel provider locale, non prova dell’avvenuta sincronizzazione cloud.

L’alternativa ACTION_INSERT apre l’editor dell’app calendario e non necessita dei permessi calendario di KeyAnt. Rimane disponibile.

## Google Tasks: lavoro ancora necessario, non attivo nella 0.6.53

L’app Google Tasks non offre in questo progetto un intent pubblico verificato per creare un’attività direttamente. Il percorso documentato è OAuth + Tasks API. Non sono stati usati endpoint privati, automazioni di accessibilità o token di altri servizi.

Per una futura integrazione:

1. Configurare un progetto Google Cloud, API Tasks, branding, informativa privacy e audience/test user adeguati.
2. Registrare un client OAuth Android per `it.keyant.keyboard` e il certificato realmente usato dalla distribuzione. SHA-1 della firma personale: `97:DE:F4:80:07:79:06:06:1F:E7:49:DC:07:93:7C:87:58:F5:9D`.
3. Integrare AuthorizationClient, richiedendo `https://www.googleapis.com/auth/tasks` soltanto quando l’utente sceglie di collegare Tasks. Gestire consenso negato, scadenza e revoca; nessun token nei log, backup o repository.
4. Mostrare account e lista, poi conferma del titolo e del giorno. Inviare tasks.insert solo dopo il consenso e la conferma.
5. Gestire timeout senza tentativi automatici di inserimento che possano duplicare l’attività. Verificare disconnessione, cambio account e annullamento.
6. Testare con l’APK firmato e l’account autorizzato. Non considerare completato il collegamento solo perché compila.

La documentazione Tasks specifica che `due` conserva esclusivamente la data e scarta l’ora. L’ora pianificata non è leggibile/scrivibile tramite questa API. Perciò anche una futura integrazione Tasks deve dichiarare il limite e non promettere una notifica puntuale impostata via API. La revisione attuale mantiene l’alternativa esplicita Copia e apri, dove la scadenza completa si imposta nell’app.
