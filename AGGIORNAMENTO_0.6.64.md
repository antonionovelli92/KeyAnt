# KeyAnt 0.6.64 — promemoria, pannelli e Studio

## Promemoria senza ambiguità

La destinazione si sceglie in Gesti e strumenti → Azioni dalla frase: Google Tasks, Calendario, Altra app, Solo su questo telefono. Il riconoscimento rimane locale. Dopo il collegamento iniziale e i permessi, una conferma della pillola avvia il salvataggio diretto; nessuna seconda scheda per Tasks o calendario. Verde soltanto dopo la conferma della destinazione e, quando richiesto, la programmazione dell’avviso. Rosso se fallisce; esito incerto o salvataggio parziale non vengono ripetuti automaticamente.

Google Tasks continua a non esporre l’orario nell’API pubblica: il campo due conserva soltanto la data. L’opzione Avviso all’orario con KeyAnt mantiene il promemoria in Tasks e programma un avviso locale. È attiva di default, coerentemente con la scelta dell’utente e la versione precedente. Per i promemoria con questo avviso la data giornaliera non viene inviata per impostazione predefinita: l’orario e la fine prevista sono nelle note. Questo evita il riquadro tutto il giorno e l’avviso Google legato alla sola data. L’opzione Scadenza giornaliera anche in Tasks può ripristinare la data, ma può comportare un ulteriore avviso Google. Completare, spostare o eliminare la Task su Google non aggiorna l’avviso locale: il limite è dichiarato nelle impostazioni e nelle note. Gli avvisi locali si annullano nelle impostazioni KeyAnt.

Calendario trasforma le frasi Ricordami/Promemoria in eventi, con avviso all’inizio, durata di un’ora se non specificata, durata/fine/luogo estratti dalla frase. Non programma avvisi KeyAnt. Eventi e promemoria hanno colori separati: eventi come il calendario, promemoria viola di default. Viene usata la tonalità più vicina fra le chiavi colore ufficiali dell’account; se il provider non espone una tavolozza, resta il colore del calendario. Nessuna scrittura in campi riservati al sincronizzatore.

Altra app usa ACTION_CREATE_REMINDER con titolo, frase e EXTRA_TIME quando l’app installata lo gestisce. Altrimenti condivide testo. La selezione distingue Invio con orario e Condivisione testo. Il comando Android non restituisce un risultato di salvataggio: l’utente deve verificare/confermare nell’app destinataria; KeyAnt non mostra verde per la semplice apertura. Compatibilità Samsung/altre app da verificare sul dispositivo, nessuna promessa di automazione universale.

## Interruttori indipendenti e calendario unificato

Promemoria, Eventi e Telefonate sono attivi di default e disattivabili singolarmente. Calendario unificato è spento di default: se attivato riconosce entrambe le famiglie di parole e salva soltanto nel calendario scelto, anche quando Promemoria ed Eventi sono spenti o indirizzati ad altre app. Ha precedenza su quelle destinazioni; la funzione Telefono rimane indipendente. Disattivandolo si ritrovano le scelte precedenti. L’interruttore generale Azioni contestuali continua a spegnere tutto.

Colori indipendenti dal tema è spento di default. Attivandolo: blu Promemoria, giallo Eventi, verde Telefonate; colori modificabili, compreso Oro o Come il tema. Pillola, bordo/glow e icona sono coordinati. Calendario unificato usa inizialmente una sfumatura tra i colori di Promemoria ed Eventi, aggiornata quando cambiano; si può scegliere un colore singolo o il tema. Le scelte rimangono memorizzate quando si torna al tema. Conferma verde ed errore rosso non sono personalizzabili e non cambiano con questi colori. I colori degli appuntamenti salvati sono separati dalle decorazioni della tastiera, incluso un colore specifico per il calendario unificato.

## Frasi, conferma e digitazione

Mezzora, mezz’ora, mezz ora e mezza ora vengono interpretati come 30 minuti dopo tra/fra; supportati un quarto/tre quarti d’ora, unora e ore con minuti aggiuntivi. Durata e fine esplicite restano prioritarie. Un giorno della settimana incompatibile con una data esplicita richiede correzione. Nessuna riscrittura libera del titolo per somiglianza.

Dopo un salvataggio confermato viene rimosso solo il comando riconosciuto, se il campo, la connessione editor e il testo sono ancora quelli confermati e non esiste una selezione. Testo precedente, modifiche durante il salvataggio, errori, risultati incerti e passaggi ad altre app vengono conservati. La conferma verde mantiene la propria durata anche quando il comando è stato rimosso.

Autocorrezione più conservativa: evita espansioni automatiche lunghe della parola digitata e sostituzioni distanti. I candidati restano nei suggerimenti. Non è un nuovo modello linguistico né una misura di superiorità rispetto a iPhone; il motore nativo e la memoria personale restano attivi.

## Pannelli, agenda, GIF e Maker

Il pannello laterale viene ridisegnato durante ogni avanzamento dell’animazione: non deve aspettare il primo tocco per comparire. In modalità affiancata anche il gesto inverso dal tasto di apertura richiude il pannello; annullare il gesto lo ripristina. Restano split, cambio formato, trasparenza e input simultaneo. Suoni del tastierino separatamente disattivabili, con profilo/volume/silenzioso della tastiera principale; nessun suono per trascinamenti annullati.

L’agenda del giorno presenta 24 ore, blocchi colorati, colonne per appuntamenti sovrapposti, eventi interi separati e indicatore dell’ora corrente. Lettura dal provider Android già sincronizzato; ContentObserver aggiorna le modifiche locali. Non viene garantita una sincronizzazione cloud istantanea. Il tocco sull’evento inserisce informazioni nel campo, senza modificare il calendario.

Ricerca GIF in una pillola con lente e animazione delle nuove lettere. Rimossa la dicitura Auto dall’intestazione; la preferenza lingua resta nelle impostazioni. Attribuzione GIPHY mantenuta visibile.

Studio: percorso della categoria visibile, temi e superfici sotto Aspetto, suggerimenti in Scrittura, touchpad in Gesti e strumenti, collezione tema distinguibile e feedback preferiti. Ricerca aggiornata, colori con campione. Maker: sezione Tastierino con anteprima, tema, ingombro, dimensione, luci ereditate o indipendenti e suono, salvati con la creazione senza sovrascrivere le preferenze globali. Gli altri materiali, forme e profili esistenti restano disponibili.

## Sicurezza e limiti verificabili

OAuth usa lo scope Tasks ampio richiesto da Google; il codice legge le liste e crea la Task esplicitamente confermata. Token in memoria, non nei backup/log; nessun accesso a Gmail o lettura remota delle chat. HTTPS, rifiuto redirect, risposte limitate, nessun tentativo automatico di riscrittura dopo un esito incerto. Calendario e notifiche richiedono i propri permessi. Il testo delle note viene inviato a Google soltanto al salvataggio. Revoca Google distinta dallo svuotamento della sessione locale.

La ricerca tecnica e i limiti sono documentati in docs/REMINDER_INTEGRATIONS.md. Le verifiche automatiche e i limiti di test fisico sono in VERIFICA-0.6.64.md. Nessun accesso ai progetti OAuth, carta, pagamento o impostazioni dell’account è stato modificato durante questo aggiornamento.
