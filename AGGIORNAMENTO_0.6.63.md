# KeyAnt 0.6.63 — pannelli affiancati, agenda e Studio adattivo

## Pannelli e Fold

In **Gesti e strumenti → Pannelli laterali**, la nuova opzione **Pannelli affiancati sul Fold orizzontale** parte disattivata. Con schermo aperto largo in orizzontale, tastiera unita e spazio sufficiente, lo stesso gesto apre il tastierino a destra oppure il calendario a sinistra senza nascondere i tasti principali. Le lettere restano utilizzabili e non richiudono il pannello. Lo swipe contrario lo richiude. L'avvio effettivo del gesto split libera il pannello e ripristina la posizione; un semplice secondo tocco non è considerato uno split. Un solo pannello laterale è aperto alla volta.

Il criterio usa geometria della finestra (lato corto almeno 600 dp), orientamento, layout unito e spazio reale. Può quindi applicarsi anche a tablet compatibili. Non altera il comportamento su telefono chiuso, Fold verticale o tastiera già divisa. I due interruttori di apertura restano separati: numeri attivi e calendario disattivato per impostazione iniziale.

Il tastierino mantiene Invio, Spazio e Cancella indipendenti: non si richiude premendoli. La scorciatoia personalizzabile conserva il proprio comportamento. In **Aspetto → Tastierino** sono disponibili larghezza Attuale/Stretto, tre dimensioni visive, animazione e luci. Stretto riduce realmente la porzione occupata, mentre le dimensioni visive precedenti cambiano solo il disegno dei tasti. Luci come la tastiera è attivo di default; disattivandolo si regolano RGB, colore, intensità e tempi soltanto per i numeri, senza sovrascrivere le impostazioni principali.

## Calendario laterale in lettura

Il mese segnala i giorni con eventi. Il tocco su un giorno apre l'agenda, con orari, luoghi e pagine da tre appuntamenti. Inserisci data e il tocco su un appuntamento inseriscono testo nel campo corrente: non modificano il calendario. In modalità affiancata non richiudono il pannello.

L'agenda legge Calendar Provider Android con READ_CALENDAR: include calendari visibili già sincronizzati, anche Google Calendar, e le singole occorrenze degli eventi ricorrenti. Non invia richieste di scrittura né forza la sincronizzazione cloud. Le variazioni del provider aggiornano il pannello mentre è aperto. Alla chiusura si interrompe l'osservazione; risultati in ritardo non riaprono il pannello. Nessuna cache persistente degli appuntamenti. Appuntamenti nascosti nei campi riservati e in incognito. Il caricamento, l'accesso negato, l'assenza di eventi e un errore del provider hanno stati distinti. Limite dichiarato di 2000 occorrenze per mese.

Le pillole che creano eventi sono una funzione distinta e mantengono conferma e permessi necessari.

## Impostazioni e split

La home Studio su Fold orizzontale presenta anteprima proporzionata a sinistra e categorie a destra; su schermi più stretti si dispone in verticale. L'anteprima non viene stirata fino all'intera larghezza. Le griglie delle categorie usano lo spazio effettivo del contenitore. Icone specifiche per azioni contestuali e pressione lunga, collegamento diretto ai tester Google, guida estesa ripiegata e nuova anteprima interattiva del tastierino. La ricerca include i nuovi comandi.

Durante lo split i contorni dei tasti seguono la geometria animata, mentre i glifi conservano proporzioni regolari e adattano l'ingombro al tasto corrente, evitando la deformazione orizzontale che spariva al rilascio.

## Google Tasks: blocco ancora da risolvere sull'account

La prova fornita mostra 403 access_denied: progetto in test, account non ammesso tra i tester. L'APK offre il collegamento diretto a **Pubblico / Audience → Utenti di test**, ma non modifica il progetto Google né dichiara un collegamento riuscito. Aggiungere lì il proprio account, salvare e riprovare il consenso. Non serve ricreare il client per questo specifico errore. Nessuna carta o fatturazione attivata. I promemoria locali restano un'alternativa esplicita, non un cambio automatico di destinazione.

## Verifica e limiti

Risultati riproducibili nel file VERIFICA-0.6.63.md e TEST-RESULTS-0.6.63.json. Test Android simulati e render controllati; nessuna prova su Fold fisico o misura FPS. Accesso OAuth reale, scrittura su Google Tasks e sincronizzazione di un account reale non verificati. L'APK viene consegnato dopo i controlli, prima degli archivi GitHub.
