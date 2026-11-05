# KeyAnt 0.6.65 · Contesto, vetro e calendario

## Azioni senza perdere la frase

La X richiude l’anteprima e ripristina i suggerimenti; l’icona continua a seguire la frase nel campo, senza la precedente scadenza di venti secondi. Il testo selezionato può proporre un’azione senza aprire automaticamente la pillola. La conferma viene sempre ricontrollata contro editor, selezione e testo correnti.

Dopo un salvataggio confermato si rimuove soltanto il comando ancora invariato, oppure soltanto la selezione confermata. Ctrl+Z o Annulla nella barra strumenti ripristina il testo con una singola memoria temporanea: non cancella l’evento e non usa gli appunti. La memoria scade dopo due minuti, viene invalidata cambiando editor o scrivendo altro e non è salvata su disco. Ctrl+X resta Taglia. Dopo il passaggio riuscito al dialer si rimuove il numero; se il telefono non si apre, il testo rimane. L’apertura del dialer non è una chiamata completata e non riceve una falsa conferma di salvataggio.

## Comprensione locale

Aggiunte varianti come creami un evento/appuntamento, rammentami, salvami. Martedì/martedi e gli altri giorni accentati/non accentati sono equivalenti. Mezzora, mezz’ora e varianti temporali limitate, quarti d’ora e durate in lettere sono interpretati nello stesso parser usato per anteprima e salvataggio. Non si riscrive indiscriminatamente il titolo.

Senza durata: 60 minuti. Due orari completi come 21 e 21:30 indicano inizio e fine; 21 e 15 indica invece le 21:15. Fine oltre mezzanotte e intervalli con data finale sono distinti. Le sequenze consecutive 5, 6, 7 maggio tutto il giorno diventano un evento ALL_DAY dal 5 all’8 escluso, in UTC. Sequenze con buchi o date impossibili non vengono allargate arbitrariamente. Gli eventi tutto il giorno non aggiungono un allarme alla mezzanotte.

Non è un interprete universale: una frase non riconosciuta o incoerente resta da correggere, senza inventare orari. Il riconoscimento è locale, senza lettura della cronologia della chat o dell’identità dell’interlocutore.

## Esito e destinazioni

Superficie di esito con riflesso vetro, spunta vettoriale progressiva e uscita morbida. Di base verde = salvato e rosso = errore. L’opzione Esito con i colori del glow usa la sfumatura personale solo se sono attivi anche i colori indipendenti. Simbolo, descrizione accessibile ed errore distinguono sempre gli stati. Animazioni ridotte rispettate.

Completa indirizzi online è disattivato inizialmente: dopo Conferma invia soltanto il luogo al geocoder del telefono, senza GPS, account aggiuntivi o chiavi a pagamento. Accetta un unico indirizzo sufficientemente coerente, conserva il nome e aggiunge l’indirizzo; ambiguità, assenza del servizio e timeout mantengono il luogo originale. Il servizio non garantisce di trovare ogni attività commerciale. Attesa massima prima del salvataggio: 1,5 secondi.

Dopo la scrittura locale viene richiesto un aggiornamento dell’account calendario, rispettando le impostazioni di sincronizzazione dell’utente. Il verde conferma l’ID del provider locale, non l’avvenuto caricamento su Google. La latenza del servizio e la rete possono restare visibili. Nessuna notifica KeyAnt aggiunta alle azioni calendario.

## Pannelli e aspetto

Calendario richiamabile dai tasti di modalità ?123 e ABC, giorno corrente evidenziato, risposta visiva al tocco senza suono. Transizioni di pannelli e pillole ammorbidite. Ricerca emoji nello stesso linguaggio grafico della ricerca GIF, con query locale e aggiornamenti raggruppati per il testo incollato.

Nuova categoria Disegno: China Fumé nero, viola, petrolio e Grafite, con Cancella rosso. China originale resta in Profili scolpiti. Stessa geometria scolpita e possibilità del Maker; opzione Disattiva trasparenze conservata nella sezione Trasparenze, rimossa dalla testa del catalogo.

Selettore delle categorie con piccole anteprime, schede più compatte. Toccando un tema si apre una prova più grande senza applicarlo: Usa questo tema è esplicito. Chiusura dallo sfondo o trascinando la maniglia. La scrittura nella prova rimane locale.

Autocorrezione bilingue più prudente: quando le parole precedenti indicano chiaramente una lingua, una proposta dell’altra lingua rimane selezionabile ma non viene applicata automaticamente. Restano valide le correzioni personali confermate; nessuna eccezione cucita su una frase privata.

## Verifica e limiti

Consultare VERIFICA-0.6.65.md e TEST-RESULTS-0.6.65.json per risultati effettivi. I test sono eseguiti su parser, provider e Android simulato; fluidità fisica Fold/Pixel, account Google reale e copertura dei luoghi richiedono prove sui telefoni. Non promettiamo zero errori di digitazione o sincronizzazione istantanea.
