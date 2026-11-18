# KeyAnt: requisiti di qualità

- Le richieste grafiche vanno confrontate con i riferimenti allegati prima e dopo la modifica. Non chiamare una copia fedele un semplice cambio di palette.
- Ogni nuova famiglia di tasti deve avere una geometria esplicita: proporzioni, spalla, incavo, raggio, profondità, ombre e tipografia. Esporla nel Maker.
- Integrare la famiglia con RGB, luce delle lettere, risposta alla pressione, trackball coordinata, colori personalizzati, anteprime, simboli, numeri, split, Fold e altezze personalizzate. Non riutilizzare indiscriminatamente lo stesso effetto.
- Catalogo, Maker e tastiera attiva devono condividere i renderer. Le anteprime di un tema devono usare la sua geometria, non quella del tema attivo.
- Verificare la barra coordinata e solo icone su ogni tema chiaro/scuro, comprese modalità con manopola e pannelli scorrevoli. L'interruttore spento deve ripristinare stock; controllare anche ricerca, comandi dell'assistente e bozza Maker. Una creazione Maker assente non è una bozza vuota.
- Il tema iOS Coordinata ha due varianti uniformi chiara/scura: non reintrodurre la diagonale della precedente interpretazione del video.
- Eseguire test significativi del comportamento e render Android reali, quindi ispezionare confronti visivi alla stessa scala. Distinguere numero di metodi, configurazioni e immagini; un grande numero non prova l'assenza di bug.
- Non dichiarare HDR, fluidità o comportamento sul telefono fisico verificati senza misurazioni sul dispositivo. Mantenere fallback SDR e HDR disattivato per default.
- Conservare checkpoint, sorgenti e APK firmata con versione crescente. Escludere chiavi, credenziali, build e video personali dai sorgenti pubblici.
- Consegnare un link diretto sandbox all'APK verificata. Non sostituirlo con un link Library già segnalato come non funzionante.
