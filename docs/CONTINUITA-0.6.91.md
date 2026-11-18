# KeyAnt 0.6.91 — 18 novembre 2026

Base completa: KeyAnt 0.6.90, versionCode 117. Nuova versione: 0.6.91, versionCode 118.

## Modifiche

- Tre raccolte: **NuPhy · Scolpiti** (7 palette), **Smalto · Satinato** (4 palette), **iOS · Bicolore** (1 palette). Ogni tema ha una modalità chiara e scura. La variante opposta a quella del riferimento è un adattamento cromatico.
- Due nuovi profili nel Maker: **Incavo · NuPhy scolpito** e **Smalto · bordo satinato**. Le geometrie condivise regolano superficie, profondità, spostamento alla pressione e luci RGB; non si usano fotografie sovrapposte ai tasti.
- La diagonale del bicolore usa le coordinate dell'intera tastiera, non una divisione ripetuta dentro ogni tasto. I colori personali hanno precedenza.
- Cache limitata a 64 gradienti per renderer; geometria e oggetti grafici riutilizzati. La configurazione della risposta alla pressione viene aggiornata solo quando cambia materiale. Il percorso di inserimento del carattere non aspetta le animazioni.
- I riferimenti temporali «questo venerdì», «per questo giorno», «questa sera» vengono risolti prima dell'estrazione del titolo. «Comprare questo libro» e i titoli tra virgolette rimangono contenuto. Rimosso il prefisso discorsivo «che devo» quando precede un infinito.

## Riferimenti e limiti

Riferimenti: screenshot NuPhy fornito dall'utente, video 39382.mp4 (carosello di quattro tastiere smaltate e tema bicolore), video 39381.mp4 (NuKey e frase del promemoria). Ricostruzione vettoriale da immagini: non equivale alla disponibilità dei materiali e dei sorgenti originali. I layout rimangono quelli funzionali di KeyAnt, adattabili al dispositivo.

Consultato https://nukeyapp.com/ per le funzioni di correzione, adattamento dei tocchi, forme dei tasti e illuminazione. KeyAnt dispone già di correzione locale, apprendimento e calibrazione facoltativa dei tocchi: questa patch conserva tali percorsi e ne verifica le regressioni. Non include Apple Intelligence né HDR nativo: il controllo HDR già presente resta una simulazione grafica, non una promessa di luminanza HDR del display Android.

La verifica grafica usa rendering Android nativo tramite Robolectric; non è una misura di FPS, temperatura o latenza su un Fold fisico. Non si dichiara assenza assoluta di micro-lag.

## Continuità e ripristino

Il repository completo è nel file `KeyAnt-0.6.91-sorgenti.zip` allegato alla release. Il bundle Git allegato conserva il checkpoint completo 0.6.90 e il commit 0.6.91. Gli archivi automatici «Source code» di GitHub relativi al ramo di pubblicazione contengono la documentazione; usare lo ZIP denominato **sorgenti** per compilare.

La firma dell'APK è la firma originale. Chiavi e credenziali non sono incluse. Per compilare una versione aggiornabile sulla stessa installazione occorre la chiave originale, fornita tramite `KEYANT_KEYSTORE`; una firma diversa richiede un'installazione separata o la disinstallazione con possibile perdita di dati. Non disinstallare per installare questo aggiornamento.

Un ritorno a un APK con versionCode inferiore non è consentito come normale aggiornamento Android: preferire ricompilare il checkpoint precedente con versionCode superiore, stessa firma e compatibilità dei dati verificata. Fare prima un backup delle impostazioni; il checkpoint del codice non contiene dati personali della tastiera.

## Verifiche eseguite

- Build Android completata: `assembleDebugNoMinify`, compilazione di tutti i test Java/Kotlin.
- **103 test JUnit/Robolectric superati, zero errori**, in 20 classi: parser calendario/titoli/intervalli, flusso di salvataggio, rendering/geometrie, Maker bicolore, RGB, pressione, correzione locale, gesture, touchpad e posizionamento card.
- 24 rendering chiaro/scuro e 9 immagini dei nuovi profili con RGB e pressione, esaminati visivamente.
- Verifica firma APK v2 riuscita; certificato identico all'APK 0.6.90. SHA-256 certificato: `bf7bc5998c63e50de960d4506499dce857cea819468673d0ca52d31bed527aa4`.
- Verifica ZIP alignment a 16 KB riuscita; pacchetto e versionCode controllati.
- Aggiornati due test storici: un orario ancora completabile `21.` non equivale a `21:00.`; le texture della raccolta TV vengono verificate attraverso il caricatore effettivo, che comprende anche le mappe 360° aggiunte nelle versioni successive.
- Corrette le delimitazioni Unicode dei giorni accentati anche nelle formule contate e negli estremi degli intervalli.

I test possono essere eseguiti con `:app:testDebugNoMinifyUnitTest --tests 'helium314.keyboard.keyforma.KeyAntCalendar691Test' --tests 'helium314.keyboard.keyforma.KeyAntVisual691Test'`; il report allegato elenca tutte le classi della regressione eseguita.
