# KeyAnt 0.6.96 — revisione dei temi

Base: sorgente completo 0.6.95, commit 0f7d8b57defbf3aed690dfea3cc28fc13fe4e357.
VersionCode 123, pacchetto it.keyant.keyboard, firma originale. Installare sopra la precedente senza disinstallare.

## Problemi corretti

- I comandi NuPhy venivano ristretti come lettere in base al rapporto larghezza/altezza. Il ruolo geometrico ora passa esplicitamente attraverso renderer, geometria, RGB, Maker e anteprime. Spalla e piede usano la stessa scala verticale nella riga.
- Smalto aveva tasti troppo alti: proporzioni predefinite quasi quadrate e raggio più vicino al riferimento. Le altezze manuali restano prioritarie. Bilanciamento delle altre famiglie conservato.
- Vetro chiaro: icona Invio leggibile. La barra coordinata riconosce anche GlassColors e la sua modalità effettiva, evitando superfici chiare e icone LED estranee nel tema scuro. Temi illustrati: contrasto locale delle icone, rispettando l'inchiostro manuale. Decorazioni dei materiali sorgente senza deformazione sulla spaziatrice.
- Anteprima riutilizzata: ricostruzione del renderer quando cambiano tema o modalità.

## Verifiche e limiti

Inventario di 380 temi in AUDIT-TEMI-0.6.96.tsv. Render Android nativi per entrambe le modalità richieste e quattro configurazioni: lettere compatte, simboli con trackball, orizzontale largo con numeri, divisa con simboli secondari. Il manifest distingue modalità richiesta ed effettiva per le palette fisse.

Tavole compatte chiaro/scuro esaminate tema per tema, confronto digitale degli otto frame rispetto alla 0.6.95 e ispezione delle differenze. Dettagli mirati sui riferimenti NuPhy/Smalto, comandi, RGB, vetro, stampe e decorazioni. Barra stock/coordinata/solo icone renderizzata per tutti i temi. Il rapporto riporta i risultati effettivi e distingue metodi, configurazioni e immagini.

Non è una garanzia di identità pixel per pixel con riferimenti non forniti, né una prova sul Fold fisico o una misura FPS/HDR. Il renderer dei test non include tutti gli overlay IME: la configurazione con trackball controlla lo spazio riservato e i comandi, non simula il telefono intero.

## Continuità

Il ramo GitHub main conserva documenti e patch. Il progetto Android completo è nell'allegato KeyAnt-0.6.96-sorgenti.zip, la cronologia in KeyAnt-0.6.96.bundle. Non usare gli archivi automatici GitHub Source code come progetto completo. La patch è applicabile alla base 0.6.95. L'audit allegato conserva immagini native, manifest e registro per tema. Chiavi di firma, credenziali, build e video personali sono esclusi dai sorgenti pubblici.
