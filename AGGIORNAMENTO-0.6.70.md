# KeyAnt 0.6.70 — barra, miniature e recupero del testo

## Barra e gesti
Lo swipe da icone a parole rimane inizialmente attivo. La zona di partenza è selezionabile: ultima icona, ultime due o ultime tre icone visibili (non coordinate fisse). Il ritorno parte dalla freccia accanto ai suggerimenti, senza sottrarre gesti alle parole. Si possono scegliere swipe immediato o premi e trascina e risposta morbida, bilanciata o rapida.
La scocca delle modalità raccolte viene misurata nella larghezza effettiva a ogni riaggancio/ridimensionamento, anziché corretta dopo il layout. Nuova manopola con corona zigrinata, faccia incassata e indice; ventaglio più contenuto, cassetto e lamelle. Le animazioni interrotte non devono lasciare callback obsolete che nascondono la barra riaperta. Presentazioni disponibili nel Maker, salvate nel progetto e modificabili con anteprima.

## Trackball
Sharingan a tre tomoe ridisegnato e collegato al caricamento effettivo; revisionati anche gli altri cinque motivi anime del generatore già presente. I vecchi asset non hanno più precedenza su questi disegni. Le miniature Luffy, Takemichi, Hinata e Naruto hanno fronte, lati e nuca distinti; sono illustrazioni avvolte sulla sfera, non modelli anatomici 3D.
PIDDU raccoglie Barbie, Sailor Moon, Hello Kitty, Kuromi e My Melody, oltre alle sfere rosa/lunari già presenti. Nuovi easter egg: MacLaren’s Pub e l’ananas di HIMYM, la porta viola di Friends, Karasuno 10 e Log Pose. Disegni creati in codice; nessuna fotografia di un volto reale.

## Scrittura
Completamento delle email note da due caratteri: un prefisso con punto resta collegato all’indirizzo. Nessun indirizzo personale preinserito. Memoria locale dei termini: il tempo trascorso riduce il peso dei suggerimenti vecchi senza cancellare le parole. Lessico supplementare offline per nomi, scienza, termini medici, tecnologia e personaggi, con tolleranza limitata agli errori nel prefisso. Non copre ogni termine possibile e non fornisce informazioni mediche: sono soltanto proposte di scrittura da selezionare.
Le impostazioni di correzione nelle app e in incognito restano distinte dall’apprendimento. I completamenti personali restano esclusi dai campi privati secondo le regole esistenti.

## Selezione, Ctrl+Z e Ctrl+Y
Quando c’è testo selezionato e arriva il secondo dito, i tasti nativi vengono annullati prima che il gesto incompleto possa inserire una lettera. Se una selezione viene comunque sostituita con testo, eliminata o tagliata da KeyAnt, una singola operazione può essere recuperata e ripristinata nella stessa connessione e nello stesso campo. Copia temporanea solo in RAM, massimo 65.536 caratteri del contesto estratto, scadenza di due minuti e cancellazione alla chiusura/cambio campo. Password escluse. Verifica integrale del contesto prima di modificare solo la porzione sostituita; se il campo è cambiato il recupero locale viene rifiutato.
Fuori da questa protezione, la cronologia resta quella dell’app di destinazione: non tutte le app Android supportano l’annullamento PC. Mappatura predefinita: Ctrl+A seleziona tutto, C copia, X taglia, V incolla, Z annulla, Y ripristina.

## Riferimenti di design consultati
- Keychron Q1 Max: https://www.keychron.com/products/keychron-q1-max-qmk-via-wireless-custom-mechanical-keyboard
- SwiftKey, barra personalizzabile: https://support.microsoft.com/it-it/swiftkey-keyboard/how-do-i-access-toolbar-in-microsoft-swiftkey-keyboard
- Sharingan (riferimento visivo): https://commons.wikimedia.org/wiki/File:Sharingan_triple.svg
- Kuromi: https://www.sanrio.co.jp/characters/kuromi/
Le nuove animazioni sono una realizzazione KeyAnt; non attribuiamo a queste tastiere effetti non documentati.
