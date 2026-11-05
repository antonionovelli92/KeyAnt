# KeyAnt 0.6.62

## Pillole dalla frase: causa individuata e corretta

La diagnosi ricevuta per la 0.6.61 identifica `PatternSyntaxException` in `ItalianTime660.normalized`. Il motore ICU usato da Android interpretava la classe `[:.]`, insieme a un successivo `:]`, come l’inizio di una proprietà POSIX non valida. Sul motore Java del computer la stessa espressione compilava: per questo i precedenti test Robolectric non intercettavano il difetto.

Le classi sono ora scritte `[.:]`, equivalenti per punto/due punti ma non ambigue per ICU. L’espressione dell’ora senza “alle” è compilata una sola volta. La verifica nativa riproduce `U_REGEX_PROPERTY_SYNTAX` (66308) con l’espressione precedente e accetta quella corretta; controlla anche le altre espressioni del parser. Le protezioni della 0.6.61 restano attive per errori inattesi, ma non sono la soluzione di questo difetto.

Fonte di piattaforma: https://developer.android.com/reference/java/util/regex/Pattern.html (Android usa ICU e può differire dal motore Java).

## Tastierino

- Cancella elimina il carattere tramite lo stesso percorso della tastiera principale e lascia aperto il tastierino. Le pressioni successive continuano a cancellare.
- Spazio mantiene il pannello; A capo e le scorciatoie conservano le proprie azioni. Per tornare alle lettere si può trascinare al contrario o toccare la tastiera principale.
- Aspetto → Animazioni → Animazione pannelli laterali: **Seta** (iniziale), **Cascata**, **Scorrimento**, **Nessuna**. Seta ammorbidisce l’ingresso dei tasti; Cascata sfasa lievemente le righe. La tastiera e il bordo del pannello si spostano insieme, seguendo il dito. Nessuno strato opaco aggiuntivo.
- Aspetto → Dettagli dei tasti → Dimensione tasti del tastierino: **Compatta, Media, Attuale**. Anche disponibile in Animazioni, accanto all’anteprima. L’impostazione iniziale conserva la dimensione precedente; le aree di tocco non si riducono.
- Anteprime con i materiali del tema, animazione limitata e riproducibile al tocco. Riduzione delle animazioni di sistema rispettata.

## Spaziatrice split

Il punto di taglio ora usa i bordi delle due metà trasformati, non la media dei loro centri. Le larghezze differenti, in particolare sul telefono verticale, non lasciano più troncata la metà più larga a gesto completato, prima del rilascio. Test sui pixel dei due tasti in geometrie 360, 760 e 1080, oltre ai fotogrammi del materiale China in apertura/chiusura.

## Consegna e limiti

APK fornito appena verificato, prima di attendere gli allegati della release GitHub. Documentazione e archivi vengono completati nella stessa sessione. Autorizzazione alla pubblicazione di APK, sorgenti e cronologia già ricevuta.

Il video 37240.mp4 è stato esaminato localmente; video e diagnostica personale non vengono pubblicati. Test su Android simulato con grafica nativa e controllo nativo ICU. Nessuna prova sul Fold fisico né misura FPS. La correzione del parser non sostituisce il collegamento OAuth di Google Tasks; salvataggi reali, autorizzazioni e servizi esterni restano da provare sul telefono.
