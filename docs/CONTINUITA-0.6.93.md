# KeyAnt 0.6.93 — Smalto e barra coordinata

Pacchetto `it.keyant.keyboard`, versionCode 120. Base sorgenti 0.6.92 `5dcfd3af66d0689e36e6d2019dfadbaa30e8ff05`.

## Resa dei riferimenti

Smalto: sostituito il gradiente verticale con una faccia convessa in due dimensioni, ridotti labbro e piede grigio, ombra di contatto sottile e trama delicata sugli spazi colorati. Lo shader è memorizzato per pigmento; nessuna generazione di texture nel ciclo di disegno dopo il primo utilizzo. Le quattro palette conservano i propri tasti funzione.

NuPhy: controllate tutte le sette palette e relative varianti chiare/scure, mantenendo il profilo incavato distinto da Smalto. iOS: rimossa completamente la diagonale, mantenuto l'ID `ref91_duo` per compatibilità e rinominato “iOS · Coordinata”. Due varianti uniformi, chiara e scura, con cancellazione azzurra.

Il riferimento video è compresso e prospettico. I confronti visivi mostrano render Android reali, non mockup; non attestano uguaglianza pixel per pixel con un'immagine originale non disponibile. Le versioni chiare/scure senza un corrispettivo nel video sono adattamenti coordinati.

## Barra, Maker e assistente

In Temi e nella personalizzazione della barra: “Coordina barra icone”, con materiale e colori della tastiera attiva, e “Solo icone coordinate”, che elimina la superficie dietro ai simboli. Disattivare la coordinazione ripristina le icone stock. Le preferenze di decorazione precedenti rimangono disponibili nel selettore manuale.

I renderer di tasti e barra sono condivisi. Maker e anteprime usano il materiale e la luminosità della bozza; la cache delle icone comprende i pigmenti personalizzati. La scelta globale esplicita prevale sulla politica salvata nella creazione applicata; l'anteprima della bozza mostra invece la sua scelta locale. Un selettore manuale diverso da stock/coordinato torna alla modalità manuale.

Corretto un difetto precedente: il Maker considerava `{}` una creazione attiva quando l'ID selezionato era vuoto. Questo poteva imporre il materiale classico alla barra anche con un altro tema selezionato. Ora l'assenza di una creazione restituisce `null` e la barra usa il tema effettivo.

L'assistente riconosce l'attivazione, il ritorno a stock e la modalità solo icone, guida alle impostazioni esatte e conserva queste proprietà nelle creazioni. Le domande informative non modificano le preferenze. Le barre con manopola, ventaglio, nastro e cassetto aggiornano anche i comandi laterali senza chiudere la conversazione o cambiare l'azione associata.

RGB, lettere, pressione, geometrie, trackball e pannelli continuano a usare i profili condivisi introdotti nella 0.6.92. La riduzione della profondità Smalto si propaga alla corsa e al posizionamento degli effetti.

## Verifica e distribuzione

Consultare `VERIFICHE-0.6.93.txt` per i risultati effettivi. Comprende test di comportamento, render nativi, passaggio stock/coordinato/solo icone, tutte le palette nuove e regressioni di scrittura e geometria. Non sono misure di fluidità, HDR o compatibilità sul telefono fisico.

Sorgenti completi nell'asset `KeyAnt-0.6.93-sorgenti.zip`; cronologia nel bundle; patch dalla 0.6.92. Il ramo GitHub principale è documentale: l'archivio automatico “Source code” non contiene l'intero progetto Android. Chiavi, credenziali, build e video personali sono esclusi. Firma originale, JDK 21 / Gradle 8.14 / SDK 36; variante `debugNoMinify` con `debuggable=false`.
