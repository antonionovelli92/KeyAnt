# KeyAnt 0.6.60 — pillola di conferma, pannelli e promemoria

## Cosa cambia

- Dopo un salvataggio confermato, la pillola diventa verde pieno `#16803C`, con spunta bianca e una sola parola: Salvato. Breve assestamento di 220 ms, permanenza di 900 ms, ritiro con il movimento già usato dalla tastiera. Rispetta animazioni di sistema e preferenza KeyAnt. La chiusura vecchia non può chiudere una nuova frase. Un errore, un risultato incerto, un permesso concesso o l’apertura di un’app esterna non mostrano un successo.
- Il pannello laterale dipinge tasti ed etichette in un unico passaggio del contenitore, senza il layer software introdotto in 0.6.59. I figli conservano hitbox e accessibilità. Questa è una nuova correzione del percorso di rendering: non una prova che il difetto della GPU Samsung sia risolto.
- La base del pannello è trasparente, come MainKeyboardView: la scocca del tema è già dipinta dal main_keyboard_frame. Il precedente secondo fondo copriva il materiale e la sua opacità. Temi, font e cap restano quelli selezionati.
- Calendario laterale spento al primo avvio della nuova versione, anche aggiornando; numeri conservati e attivi di default. La migrazione del calendario avviene una sola volta: una successiva riattivazione volontaria resta memorizzata. Interruttori indipendenti in Gesti e strumenti → Pannelli laterali.
- Gesti e strumenti → Pressione lunga dei tasti: interruttore generale, scelta del tasto/gruppo, menu originale, disattivazione, scorciatoie personali o simboli, ordine e colonne. Invio/Cerca/Vai parte disattivato per non competere con il tastierino. Il menu originale della virgola conserva la sua configurazione. Cancella ripetuto, tocco normale e interruttori degli swipe sono indipendenti.
- Se il menu di Invio viene abilitato, una pressione ferma lo apre mentre il dito è ancora appoggiato; lo swipe iniziato dopo la breve attesa annulla il timer del menu. Prima l’apertura veniva forzata al rilascio.

## Temi coordinati e interruttore opaco

- **20 abbinamenti** per le collezioni Profili scolpiti e Materie d’autore: Disegno Carta/China, Coppa Menta, Campana Ambra/Ardesia, Lamina Acciaio, Pellicola Prisma, Intaglio Noce, Denim, Pietra, Candy, Nixie, Strumenti, Macchina da scrivere, Letterpress, Terminale, Oceano, Opale, Arcade e Rame. La barra riutilizza il renderer dei tasti originali; le icone hanno tratti tecnici, incisi, modulari o morbidi e colori adeguati al contrasto. Non sostituisce i profili della tastiera.
- **Attuale · segui il tema** sceglie automaticamente questi abbinamenti. Sono selezionabili anche singolarmente nel gruppo **Abbinati alla tastiera**, dalla barra e dal Maker. Le scelte esplicite già salvate rimangono tali.
- **Contorno e superficie dei pulsanti**, acceso di default: disattivandolo rimangono i simboli tematizzati con le proprie finiture e luci; scompare la superficie del pulsante. Lo trovi sia sotto Tema delle icone sia dentro la selezione. Le aree di tocco non cambiano. Riattivandolo torna la superficie scelta.
- **20 sfere abbinate**, disponibili nel gruppo Abbinati alla tastiera. Segue il tema le usa automaticamente per i nuovi materiali; i palloni o le sfere scelti esplicitamente restano selezionati. Venature, trama tessile, grana minerale, linee tecniche e fosfori sono definiti sulla sfera e ruotano con il dito; risposta alla luce differenziata per materiale.
- **Rendi tutto opaco**, spento di default, in Temi e in Sfondo e trasparenza: sovrascrive soltanto il rendering di base, tasti, pannelli, superfici/icone della barra, fascia inferiore e sfera. Sospende blur e aperture trasparenti in split. Disattivandolo riprendono i valori originali: nessun cursore o documento Maker viene riscritto. Riflessi, antialiasing e ombre mantengono sfumature, senza rendere trasparente il corpo dei tasti. Il fondo solido usa il colore del tema, non un nero fisso.

## Comprensione della frase

Un parser locale compone indicazioni temporali, numeri anche in lettere, parti del giorno, durata e fine. Non è un modello addestrato e non promette di interpretare qualsiasi frase. Anteprima e salvataggio usano le stesse regole.

| Testo dopo «evento» | Interpretazione |
|---|---|
| questa sera alle nove uscita con amici durata cinque minuti | Oggi 21:00–21:05; titolo «uscita con amici» |
| stasera 21 film al cinema | Oggi 21:00–22:00 |
| questa sera alle 21 cinema fino alle 21:30 | Oggi 21:00–21:30 |
| questa sera alle nove cinema fino all’una di notte del giorno dopo | Oggi 21:00–domani 01:00 |
| domani alle cinque e trenta visita | Domani 05:30–06:30 |
| 5 maggio alle ventuno biglietti cinema | Prossimo 5 maggio alle 21:00, durata 60 minuti |

Durata predefinita 60 minuti solo quando non viene indicata una durata/fine. Intervalli incompleti, durate nulle o contraddittorie non devono diventare un salvataggio apparentemente corretto. Indirizzi espliciti separati dal titolo; i numeri civici non diventano l’orario. I promemoria supportano quantità relative come «tra sette minuti» e «tra un quarto d’ora».

## Promemoria senza carta

Nuova scelta **Sul telefono · senza account né carta** in Azioni dalla frase → App promemoria, anche con pulsante diretto. Salva un avviso locale Android; non scrive in Google Tasks e non richiede Google Cloud. Sono necessari i consensi Android alle notifiche e agli avvisi esatti. Tornando da un consenso, serve di nuovo la conferma della frase. Gli avvisi vengono riprogrammati al riavvio; disinstallazione/cancellazione dati li rimuovono. Gli avvisi locali si annullano dalla stessa pagina.

Google Tasks resta una destinazione separata e richiede il consenso Google e una registrazione OAuth Android corretta. La guida ora contiene i link diretti, distingue Google Tasks da Cloud Tasks e non invita ad attivare la prova Cloud o la fatturazione. Il codice 8 non è stato risolto su un account reale: non dichiarare il collegamento funzionante sulla base dei test simulati.

## Digitazione e limiti

Le pressioni lunghe vengono isolate dal percorso dei tocchi; il rientro del pannello conserva le coordinate della lettera toccata. Restano nel controllo di regressione doppie rapide, multitocco, geometria telefono/Fold e calibrazione. Non vengono abilitate nuove euristiche predittive aggressive e non viene dichiarata una precisione pari a iPhone: servono misure sul dispositivo e un corpus italiano separato dalla taratura.

Nessun test su Fold fisico, nessuna misura FPS, nessun account Google reale collegato e nessuna prova di consegna reale delle notifiche a telefono bloccato. Il calendario è verificato con provider Android simulato: verificare anche che l’evento sia visibile nella destinazione sul telefono. Risultati effettivi e build: VERIFICA-0.6.60.md.
