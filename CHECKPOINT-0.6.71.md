# KeyAnt 0.6.71 — checkpoint 6 novembre 2026
Base sorgenti: v0.6.70, 8e81613c0b4eb9bde6beee19ca43c3dd7bb0c116. Branch work/0.6.71-search-paste-events.

## Richieste e criteri di accettazione
- Ricerca GIF: freccia torna alle GIF, conserva ricerca/risultati; X chiude verso tastiera. Emoji mantengono origine emoji.
- Ctrl+V: verificare immagini degli appunti, usare percorso media compatibile con editor; niente immagini vecchie al posto del testo appena copiato. Non promettere copia di immagini selezionate nell'app ospite tramite Ctrl+C testuale.
- Eventi/promemoria: separare istruzione, titolo, data/ora, durata e indirizzo. Caso segnalato: «di entrare su discord». Conservare preposizioni significative e nomi; titoli espliciti, intervalli e durata standard 60 minuti; niente date arbitrarie in casi ambigui.
- Trackball: revisione individuale, priorità volti Takemichi/Deku/All Might e volti già aggiunti; mantenere palloni e Sharingan approvati. Verificare visivamente, distinguere correzioni completate e limiti.
- Nessun dato personale/screenshot/chiave di firma nel repository pubblico.
- Checkpoint frequenti, test mirati e regressioni, firma esistente, APK diretto e release GitHub nella stessa risposta finale. Utente segnala crediti quasi esauriti: non dipendere da un nuovo messaggio per consegna.

## Stato iniziale
Confermato: GifPanel freccia hardcoded verso emoji anche durante ricerca.
Da verificare: pipeline clipboard; estrazione titoli dopo temporali; catalogo grafico.
Implementazione, test e pubblicazione 0.6.71 ancora da completare.
Rollback: APK 0.6.70 nella release precedente; backup dati prima di downgrade (Android può richiedere disinstallazione).

## Checkpoint implementazione
- GIF: freccia in ricerca cambia stato del pannello corrente, senza ricreare le emoji. Test di tre cicli ricerca/ritorno e X.
- Incolla: shortcut/gesture/bottone CLIPBOARD_PASTE ora chiamano pasteClipboardContent; media dalla stessa offerta della pillola, oppure file già acquisito identificato dalla copia attuale; URI non convertiti in testo. Fallback all'incolla nativo, nessuna acquisizione privata implicita.
- Eventi: EventLanguage671 protegge titoli espliciti/tra virgolette, separa connettivo «di» davanti a infinito, normalizza «in vja» solo come indirizzo. Primo giro 47 test: 2 casi grammaticali individuati e corretti (titolo quotato con «via», «di sera» rimosso globalmente dal vecchio parser). Secondo giro in corso.
- Grafica: sei nuove texture integrali a 360° (Takemichi, Deku, All Might, Luffy, Hinata, Naruto), file in assets/ball_portraits; controllo renderer ancora da completare. Nessuna pretesa di mesh anatomica 3D: superficie della sfera.
- Checkpoint remoto pubblicato su work/keyant-0.6.71, commit 373efe7760f06f8c116fd09dcd02c3af95825291.
- Catalogo precedente: 100 varianti non abbinate ai temi ispezionate su cinque tavole; nuova versione aggiunge Deku e All Might (102). Nove superfici rifatte, con sei volti anime e tre PIDDU. Gli altri motivi restano simboli/illustrazioni stilizzate: non dichiarati ricostruzioni fotorealistiche né ridisegnati tutti.
- Verifica 360°: individuata inversione orizzontale della proiezione UV (cicatrice di Luffy/simbolo Naruto/fiocco Kitty). Corretta nella conversione verso la longitudine del renderer; nuova verifica grafica richiesta.

## Verifica conclusa
150 test distinti superati, 21 classi; ICU 94 pattern; nessuna nuova segnalazione lint. APK verificato: 1f8696255debdc11eb301d9571eccdbac93a7f6883f403c2863cdfc714d911dd. Firma invariata, integrità ZIP e allineamento 16 KiB validi.
Sorgenti/tag/bundle e allegati release preparati; pubblicazione remota e download da verificare prima della risposta finale.
