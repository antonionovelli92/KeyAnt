# KeyAnt 0.6.95 — proporzioni equilibrate in orizzontale

Pacchetto `it.keyant.keyboard`, versionCode 122. Base completa 0.6.94: `2686b8bd9692ea32daff05ef8cdad4f4d5077cc2`.

La 0.6.94 riempiva la larghezza in orizzontale disabilitando il margine di bilanciamento e il fattore del 90% delle righe larghe. Nei video di riscontro, il tema Xbox appariva troppo allungato sia sul display esterno sia sul Fold aperto. Su richiesta dell'utente, la 0.6.95 ripristina esattamente la geometria della 0.6.93: KeyboardParams, KeyboardBuilder e KeyboardGeometry tornano alla versione precedente. Ripristinata anche la descrizione dell'opzione Proporzioni equilibrate sul Fold.

Il bilanciamento dipende dalla larghezza disponibile, dall'altezza dei tasti e dal tema. Nella modalità unita usa i margini laterali; nella divisa regola lo spazio centrale. Conservati i bordi di sistema e le preferenze di dimensionamento. Nessuna migrazione azzera le regolazioni personali.

Le correzioni della 0.6.94 a menu, icone, RGB coordinato, assistente e impostazioni rimangono inalterate. Il ripristino riguarda solo il dimensionamento e il testo descrittivo corrispondente.

Verifiche: render Android nativi, tocco sui tasti su tre larghezze con/senza numeri e split, geometria delle aree interattive, protezione fotocamera e regressioni dei temi/menu/RGB. Il rapporto allegato riporta gli esiti effettivi. Non si dichiara una prova sul telefono fisico.

APK firmata con la chiave originale, aggiornabile senza disinstallare. Sorgenti completi, bundle e patch dalla 0.6.94 allegati alla release. Il ramo GitHub principale è documentale: gli archivi automatici Source code non sostituiscono l'asset sorgenti. Chiavi, credenziali e video personali esclusi.
