# Checkpoint KeyAnt 0.6.69 — richieste e ripresa

Stato finale: APK 0.6.69 validato; 213 casi distinti superati in 25 classi.
Baseline sorgente originale: 1898d6f78437f01a4d59abec512848895b683087 (v0.6.68).
APK 0.6.68 pubblico e verificato: ce15f04a82d68e113c8c6870fb1a4128e1a6713c3e3b22e654d7dfd8ebe13c17.
Non sostituire la versione pubblicata prima dei controlli. Non azzerare dati o preferenze.

## Richieste
- Pillola Incolla utilizzabile anche nei campi login/password e in incognito. Correzione, apprendimento e raccolta privata restano disabilitati. Contenuto sensibile mascherato. Non creare cronologia dai campi privati.
- Barra e manopola armoniose con gli angoli arrotondati. Transizioni a scomparsa continue; esaminare variazioni altezza/inset all'apertura della tastiera.
- Esaminare affidabilità delle gesture a due dita senza cambiare arbitrariamente soglie o azioni esistenti.
- Nuova combinazione opzionale Q+P: due dita, swipe su per mostrare strumenti, giù per nasconderli. Solo la coppia scelta prevale sulle gesture generali; coppia e azioni personalizzabili nelle impostazioni. Nessun comando durante semplici tocchi.
- Pallino tema: applicazione immediata. Grafica: prova interattiva con campo testo, tastiera grande e conferma esplicita; annullare preserva tema/preferenze. Pressione lunga conserva i Preferiti. Sfondo della galleria attenuato/sfocato.
- Varianti Pidu rosa, rosa/nero e nero/rosa del disegno China e materiali recenti; pochi temi aggiuntivi coordinati con barra e trackball.
- Conservare impostazioni rapide RGB e trasparenza, preview delle opzioni e comportamento Fold/split.
- Verificare regressioni scrittura, correzione, previsione, appunti e prestazioni; documentare limiti e problemi reali, senza dichiarare miglioramenti non misurati.

## Consegna e sicurezza del recupero
Incremento 0.6.69/codice 96. Stessa firma personale.
Checkpoint del codice, note, risultati test e ripristino. Nessuna chiave, credenziale o registrazione privata nei sorgenti pubblici.
APK, sorgenti completi, cronologia e checksum nella release; download normale in chat e link diretto GitHub dopo verifica.
Il ramo main non è stato aggiornato alla 0.6.68: precedente controllo automatico lo ha impedito. La release v0.6.68 è sul checkpoint work/keyant-0.6.68.


## Stato intermedio verificato
Compilazione Kotlin/Java riuscita. Primo gruppo: 65 test, un fallimento riproducibile sulla larghezza della manopola. Corretto limitando il contenitore esterno e lasciando lo scorrimento alla sola riga interna; il test ora passa a 320/420/900 px.
Pillola privata, protezione del campo di destinazione e ritiro dopo digitazione verificati. Nessun cambiamento al motore del dizionario. Regressione estesa e build finale in corso.

## Consegna finale
APK codice 96, firma uguale alla 0.6.68, SHA-256 848eb2f360f8058a30a73e197ff68e826bb39d9c66ef3e35106514463e93be1a.
Codice applicativo finale 2b3910a85b84d56707cd9fa9379eb725aff6b67f. Risultati dettagliati in TEST-RESULTS-0.6.69.json e VERIFICA-0.6.69.md. Lint invariato, nessuna prova su telefono fisico. Le sezioni intermedie sopra conservano la cronologia del lavoro.
