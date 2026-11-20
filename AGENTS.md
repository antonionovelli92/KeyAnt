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
- In orizzontale mantenere le proporzioni bilanciate precedenti alla 0.6.94: il margine laterale e la riduzione al 90% sui display larghi evitano tasti eccessivamente allungati. Non eliminarli per riempire lo schermo. Preservare insets Android e regolazioni manuali; verificare Fold aperto/chiuso, tap reali, numeri, split e rotazione.
- Menu strumenti: fasce separate per icona ed etichetta, testo ingrandito e modalità modifica verificati. Il comando RGB coordinato deve accendere un effetto visibile e seguire il tema, con stato e anteprima.
- Distinguere il ruolo geometrico dei tasti funzione dalle lettere anche in RGB, Maker e anteprime: una soglia basata sul rapporto larghezza/altezza non deve restringere i comandi. Spalla e piede devono restare allineati nella riga.
- Conservare un inventario per ogni tema con modalità effettiva, render nativo e confronto prima/dopo. Non trasformare il conteggio delle immagini in una dichiarazione di verifica manuale integrale o perfezione.
- Smalto usa proporzioni predefinite quasi quadrate, NuPhy lettere scolpite più alte. Le altezze impostate manualmente hanno precedenza; il bilanciamento orizzontale delle altre famiglie va preservato.
- Le anteprime riutilizzate devono ricostruire il renderer al cambio di tema/modalità. Il contrasto automatico delle icone stampate deve rispettare l'inchiostro scelto dall'utente.
- Dimensioni: distinguere schermo e orientamento, poi variante con/senza trackball. I profili nuovi ereditano i valori precedenti; il ripristino di un profilo non deve cancellare un altro profilo o la variante trackball. Nascondere le scelte Fold sui telefoni non pieghevoli.
- Altezza uniforme predefinita per lettere e comandi. La riga inferiore più bassa è una personalizzazione esplicita; geometria e aree di tocco devono rimanere coerenti. NuPhy non deve avere un restringimento orizzontale nascosto rispetto al bilanciamento comune.
- Distinguere larghezza dell’intera tastiera (comprese barre e pannelli), larghezza della struttura e scala visibile dei copritasti/caratteri. Verificare riduzione, ripristino, rotazione e centratura.
- Effetti originali del tema: sovrapposizione reversibile alla risposta personale, senza cancellarne colori, effetti o intensità. Maker, assistente e anteprime devono applicare la stessa politica.
- L’assistente conserva un riferimento esplicito alla funzione appena discussa per i comandi successivi. Se il riferimento è ambiguo deve chiedere quale funzione, senza agire su un argomento vecchio. Le anteprime automatiche si fermano fuori schermo e rispettano la preferenza di movimento del sistema.

- Angoli arrotondati in Aspetto del tema e Trasparenze deve usare la stessa preferenza, senza riscriverla quando si apre la pagina. ANT e ricerca devono raggiungere il controllo corretto.
- Le anteprime rispettano Suono, Silenzioso e Non disturbare senza toast ripetuti. Il feedback aptico resta indipendente e non introduce code o ritardi artificiali.
- La revisione contestuale del testo è esplicita, locale e con anteprima. Non eseguire il modello a ogni tasto; mantenere fallback rapido e protezioni su termini personali, nomi, numeri e negazioni.

- Il jolly vuoto del layout numerico nativo è distinto dalla scorciatoia del pannello laterale: doppio tocco seleziona tutto, singolo copia solo una selezione, pressione lunga incolla. Il gesto non deve produrre spazi o aprire il touchpad; annullare azioni in attesa al cambio campo e su pressione lunga.
- Le dimensioni distinguono anche lettere, simboli 1, simboli 2 e numeri. Conservare i profili schermo/orientamento/trackball, il ripristino personale e i valori predefiniti automatici del tema. Le celle e la mappa dei tocchi devono seguire la ridistribuzione della spaziatrice e i tasti aggiunti.
- Il pannello strumenti può mantenere l’aspetto precedente, seguire il tema o usarne un altro. Riutilizzare il renderer dei copritasti, conservando fasce distinte per icona ed etichetta e organizzazione dei comandi.
- Disattivare i colori personali non deve cancellare la palette salvata per il tema. Ricerca, riepilogo rapido, impostazioni dettagliate e ANT devono usare lo stesso stato.
- La pulizia vocale mantiene sempre l’originale confrontabile. I ripensamenti numerici richiedono marcatori espliciti e un’opzione dedicata: non interpretare ogni «no» come cancellazione e non alterare citazioni, nomi o numeri non corretti esplicitamente.
