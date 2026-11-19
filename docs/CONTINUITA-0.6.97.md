# KeyAnt 0.6.97 — profili, dimensioni ed effetti

Base completa: 0.6.96, commit 31e8b06b6001050ff7b23b80ef7faa0db7317e94. VersionCode 124, pacchetto it.keyant.keyboard. Firma originale; installare sopra la precedente senza disinstallare.

## Geometria e profili

NuPhy perde il vincolo aggiuntivo che restringeva la tastiera in orizzontale e il ritaglio interno delle lettere larghe. Conservati bilanciamento comune, bordi di sistema, proporzioni Smalto e iOS. Comandi e lettere hanno la stessa altezza per default. La riga inferiore più bassa è opzionale.

DimensionProfiles697 risolve quattro profili: compact/wide × portrait/landscape. La rotazione di un telefono non lo trasforma in uno schermo ampio. Ogni profilo ha una variante `_ball`, ereditata dal profilo normale fino a personalizzazione. I valori precedenti restano leggibili; nessuna migrazione distruttiva. La variante orizzontale eredita le vecchie regolazioni larghe, che prima governavano anche il telefono ruotato. Le scelte Fold compaiono con sensore/capacità hinge o modello Fold riconosciuto; sugli altri telefoni compaiono soltanto le due orientazioni.

La pagina Dimensioni separa ingombro totale, struttura delle righe, disegno dei copritasti e dimensione dei caratteri/icone. Larghezza complessiva con barre e pannelli distinta dalla larghezza della struttura. Riga inferiore, funzioni, lettere, numeri, spaziatrice e simboli regolabili. Socket trackball calcolato prima delle aree di tocco. La selezione di un profilo nell’editor non attiva la trackball o cambia orientamento. Anteprima nativa con sfera visibile nei simboli.

## Effetti e interfaccia

In Temi, Aspetto del tema raggruppa interruttori compatti per barra coordinata, solo icone, risposta originale, RGB, colore coordinato, suono e vibrazione. Superfici separata e richiudibile. iOS Coordinata è in Stile Apple. Le schede hanno bordi, superfici traslucide e gradienti leggeri; le categorie e i passaggi Maker scorrono con indicatore animato.

Luci ed effetti ha quattro sezioni: Al tocco, RGB, Lettere, Tasti attivi. Gli effetti originali sospendono gli effetti personali di superficie, contorno e lettere senza sovrascriverli. RGB, suono e vibrazione sono separati. Nuovi effetti: Orbita e Scintilla sulla superficie; Nastri e Cascata sotto i tasti; Luccichio e Scansione sulle lettere. Anteprime native automatiche, interattive e rispettose delle animazioni di sistema. Maker conserva il suo valore nella bozza e lo applica esplicitamente; anteprima coerente.

## ANT

La cronologia serializza il riferimento semantico alla funzione e alla pagina. «Attivala», «disattivala», «aprila» e «portami lì» seguono l’ultimo riferimento univoco. Un argomento diverso interrompe il riferimento. Le bozze Maker precedenti non intercettano una conferma riferita a un altro argomento. Nuovi interruttori indicizzati; comandi dimensionali espliciti con valori limitati e profilo indicato nella risposta. Per esempio: «imposta larghezza tastiera al 80% in orizzontale» e «imposta altezza riga inferiore al 80%». È un assistente locale con intenti supportati, non comprensione universale.

## Verifica e continuità

Risultati effettivi nel rapporto VERIFICHE-0.6.97.txt; inventario per tema in AUDIT-TEMI-0.6.97.tsv. Render Android nativi, regressioni di tap/layout, nuove prove UI e profili. Nessuna prova sul Fold fisico, misura FPS/HDR o garanzia di assenza di bug. I riferimenti esterni completi non sono disponibili per ogni tema; il confronto digitale con la versione precedente non equivale a una copia pixel-identica di ogni tastiera originale.

Il ramo pubblico main conserva documenti e patch. Il progetto Android completo è in KeyAnt-0.6.97-sorgenti.zip, la cronologia nel bundle, le differenze nella patch da 0.6.96. Non usare gli archivi automatici Source code come progetto completo. Chiavi, credenziali, build e video personali esclusi.
