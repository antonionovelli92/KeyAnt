# KeyAnt 0.6.57

## Frase, icona e pillola

Per impostazione iniziale si mostra solo l’icona contestuale luminosa e restano disponibili i suggerimenti delle parole. Un tocco sull’icona apre l’anteprima aggiornata; la conferma esegue l’azione. La X richiude l’anteprima senza cancellare il contesto della frase. In **Azioni dalla frase → Apri automaticamente la pillola** si può scegliere l’apertura automatica, inizialmente disattivata. Chiudendo con la X, ulteriori parole della stessa frase non riaprono l’anteprima. Una frase ordinaria o un nuovo tipo di azione interrompe quella proposta. Non sono aggiunte nuove gesture contestuali.

Il riconoscimento resta locale e aggiorna la proposta mentre si scrive. Il timeout di venti secondi è ora di inattività: la digitazione prolunga il contesto, le sole chiamate del dizionario non lo prolungano. Cambi di campo, testo non più valido, password, modalità privata e impostazione disattivata conservano le protezioni precedenti.

Il calendario legge durata esplicita (per 45 minuti, durata di 2 ore, per un’ora e mezza) e luogo esplicito (in via…, piazza…, presso…, indirizzo…). Titolo, luogo e durata sono gli stessi per anteprima, provider Android e app calendario esterna. La durata predefinita di 60 minuti è mostrata in anteprima. Durate esplicite zero o superiori a 24 ore vengono rifiutate. È un parser locale conservativo, non una comprensione universale della lingua.

## Movimento laterale e tocchi

Il pannello e la tastiera si spostano in modo complementare, con un bordo condiviso: niente pannello appoggiato sui tasti immobili. La posizione del dito è letta in coordinate schermo. I contenuti sono misurati all’apertura, prima della fine del gesto; il contenitore a una mano dispone anche le nuove viste. Il ritorno usa lo stesso movimento invertito. Le coordinate della prima lettera restano ancorate al punto premuto mentre la tastiera rientra.

Tenere il tasto simboli e trascinare verso destra apre i numeri; da Invio trascinare verso sinistra apre il mese. Il trascinamento inverso, una lettera visibile o Cancella riportano ai tasti. Le due opzioni restano indipendenti. I profili e le famiglie di materiali esistenti non vengono sostituiti.

## Video e appunti

Scartare un media ritira anche il riferimento persistente, non soltanto la vista della pillola. Una reimportazione dello stesso file dalla galleria non annulla questa scelta. La digitazione ritira solo il media effettivamente mostrato, evitando di eliminare un contenuto nuovo arrivato nel frattempo. Il watermark temporale impedisce alle importazioni già in corso di riattivare offerte antecedenti allo scarto. Una nuova copia esplicita resta consentita. Il comportamento sperimentale di ritorno dopo digitazione rimane disponibile disattivando la preferenza di ritiro persistente.

## Google Tasks: diagnosi e limite aperto

Nel filmato 37180 compare il messaggio generico di collegamento non completato dopo la scelta dell’account. Non dimostra uno specifico codice OAuth. Il ritorno Google viene ora analizzato anche con resultCode diverso da RESULT_OK; scope rifiutato, token assente e codici di errore non vengono più ridotti tutti al messaggio generico. Dopo il ritorno il messaggio resta nell’anteprima; nessuna attività viene dichiarata salvata senza risposta positiva del servizio.

La console Google Cloud ha restituito “Site Unavailable / Unable to access this site” nell’ambiente di lavoro. Non è stato possibile registrare o verificare il client Android né completare un test con l’account reale. La registrazione richiede package it.keyant.keyboard e la firma indicata nella guida. I test usano provider/trasporti simulati. Non è corretto considerare risolto il collegamento reale finché non è configurato e provato sul telefono.

## Riferimenti e verifica

Analizzati i filmati privati 37181, 37180 e 37177 e la schermata di WhatsApp. Confermati nel primo i pannelli vuoti sopra i tasti fermi. I video privati non sono distribuiti. La somiglianza fotogramma per fotogramma al gesto NuKey originale e i tempi dei frame sul Fold fisico non sono certificati. Vedere VERIFICA-0.6.57.md per risultati, matrice simulata e limiti.
