# KeyAnt 0.6.50

Aggiornamento incrementale della 0.6.49, versionCode 77. Installare sopra la versione precedente senza disinstallare per conservare impostazioni, parole apprese e calibrazione.

## Scrittura e appunti

- Pressione e rilascio dei tasti più brevi, con animazioni indipendenti e interrompibili.
- Cache limitata dei suggerimenti personali per prefisso e contesto esatti, invalidata dopo apprendimento, cancellazione o reset; attesa del worker ridotta da 180 a 40 ms, con ritorno al percorso del dizionario se occupato.
- Espressioni regolari delle correzioni italiane preparate una volta; conservazione del tutto maiuscolo nelle sostituzioni.
- In modalità privata eliminato il duplicato testuale «Incolla» quando Appunti o Incolla è già fissato nella barra. Se manca, resta un pulsante con icona, descrizione accessibile e suggerimento al tocco prolungato. Il provider Autofill conserva i propri suggerimenti.
- Nessun cambiamento allo schema della memoria, alle soglie del tocco adattivo o al ciclo delle pillole. Nessuna raccolta nei campi protetti.

## Aspetto e personalizzazione

- Quattro temi **Vela** in Stile Apple: Perla, Grafite, Rosa cipria e Salvia, chiari/scuri e personalizzabili nel Maker.
- Nuovo effetto RGB **Bagliore**: luce locale che sfuma dal tasto premuto. L'onda si propaga, la scia segue la direzione orizzontale: anteprime e rendering ora condividono queste differenze.
- Ricerca impostazioni con indice statico riutilizzato e temi Maker aggiornati dinamicamente.
- Sette trackball maglie riviste: Inter, Arsenal, United, Barcellona, Real, Inter 1998 e Barcellona 1999. Microtrama, riflessi più morbidi e mappe di materiale ricalibrate; sponsor Betsson e O2 da sorgenti vettoriali ufficiali.
- Nuove trackball **Inchiostro · Porcellana e oro** e **Rosa titanio · Metallo ondulato**.
- Raggi di proiezione delle sfere riutilizzati durante la rotazione, riducendo calcoli ripetuti senza cambiare i gesti.

## Verifiche e continuità

Risultati riproducibili in `VERIFICA-0.6.50.md`; ricerca e fonti in `RICERCA-0.6.50.md`. Baseline 0.6.49 conservata nel bundle Git con tag `baseline-0.6.49`. Ripristino mirato dei soli comportamenti in `ROLLBACK-0.6.50.md`.

Le anteprime sono render del codice Android sotto Robolectric. Non sostituiscono una misura della fluidità sul Fold fisico. Le maglie sono ricostruzioni grafiche migliorate, non scansioni certificate 1:1. Nessuna statistica personale è inclusa negli allegati pubblici.
