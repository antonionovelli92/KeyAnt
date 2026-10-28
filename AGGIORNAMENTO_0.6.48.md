# KeyAnt 0.6.48

Pacchetto `it.keyant.keyboard`, versione Android 75. Aggiornamento sopra la 0.6.47, senza disinstallare: impostazioni, memoria personale e calibrazione restano sul telefono.

## Password, modalità privata e Incolla

La pillola del gestore password Android e quella dell'integrazione SafeInCloud sono superfici distinte dalla pillola degli appunti. Entrambe ora lasciano due comandi esterni al contenuto del gestore: **Incolla dagli appunti di sistema** e **Mostra strumenti della tastiera**. Dopo aver richiamato gli strumenti, una risposta tardiva del gestore non riprende la barra nello stesso campo. L'offerta torna disponibile entrando in un nuovo campo.

Nei campi privati la barra offre Incolla anche se non era stato fissato tra gli strumenti. Anche il pannello Appunti ha un comando esplicito Incolla. Il contenuto non viene letto da questi nuovi pulsanti finché non vengono premuti; non viene mostrata un'anteprima della password. Rimangono le politiche precedenti di cronologia, campi sensibili e apprendimento. L'incognito non viene disattivato per rendere disponibile Incolla.

Il flag Android [IME_FLAG_NO_PERSONALIZED_LEARNING](https://developer.android.com/reference/android/view/inputmethod/EditorInfo#IME_FLAG_NO_PERSONALIZED_LEARNING) riguarda l'apprendimento: non è un divieto generale di incollare. Questa versione non forza la correzione nei campi password e non modifica le esclusioni dei campi speciali.

## Pillola degli appunti

Una copia ritirata dopo la digitazione non viene riattivata da una seconda rappresentazione dello stesso evento. Un limite temporale conservato al cambio/fine del campo impedisce a una cattura precedente alla scrittura di presentarsi in ritardo nel nuovo editor. Una nuova copia successiva rimane proponibile. La vista montata viene inoltre nascosta quando si digita, anche quando il campo non produce una risposta del dizionario.

La modifica riguarda la proposta nella barra: non cancella il contenuto copiato né la cronologia. Il doppio Cancella e le cancellazioni normali mantengono le regole esistenti. Sono gestiti i casi identificati nel codice; non si dichiara risolto ogni possibile comportamento di ogni editor Android.

## Contesto e digitazione rapida

Il motore continua ad aggiornare i suggerimenti durante la composizione usando i dizionari, le parole precedenti e la memoria locale. È corretto un filtro della memoria che escludeva dal contesto le parole di una sola lettera: sequenze come **vado a → casa** e **lui è → gentile** possono ora contribuire alle continuazioni apprese. Non vengono importate frasi preconfezionate e non si abbassano le soglie di ammissione alla correzione automatica.

Il contesto locale considera fino a due parole precedenti per la memoria delle frasi: non è una comprensione semantica completa del messaggio. Nessun nuovo invio del testo a servizi esterni. Maiuscole, Caps Lock, parole protette e modalità privata conservano le protezioni precedenti.

Per la digitazione veloce sono verificati il passaggio dei tocchi normali sulla barra spaziatrice e i gesti sovrapposti. Non viene ritoccata la sensibilità del touchpad o la calibrazione sulla base della sola sensazione di perdita di lettere. I test non sostituiscono una prova fisica con velocità, vibrazione e applicazione effettivamente usate.

## Sapphire: fumé con riflessi azzurri

In **Aspetto → Temi → Stile Apple**:

- **Sapphire · Fumé azzurro**, scuro;
- **Sapphire · Perla azzurra**, chiaro.

La superficie a riposo conserva la geometria e il materiale fumé. La pressione aggiunge un bordo e un riflesso azzurro; il popup usa il vetro con luce blu del tema Android. Le varianti sono selezionabili separatamente e disponibili nel Maker. Il tema attivo e le sue regolazioni non vengono sostituiti automaticamente.

## Riferimento e ripristino

La copia completa dei sorgenti 0.6.47 resta il riferimento precedente. `maintenance/rollback-0648/` contiene due ripristini indipendenti: comportamento della barra/appunti e filtro del contesto. Le istruzioni descrivono anche i file aggiunti da rimuovere per ricompilare. I nuovi temi possono restare durante il ripristino del comportamento.

Per tornare al comportamento precedente sul telefono si prepara un nuovo APK con codice versione superiore e firma personale compatibile, invece di disinstallare l'app o tentare un downgrade che potrebbe compromettere i dati.

## Compilazione e verifica

Comando riproducibile: `tools/verify_0648.sh`. Il risultato effettivo della verifica è registrato in `validation/0.6.48/VERIFICA.md` nell'archivio personale. Non sono state eseguite prove su Fold o Pixel fisici, né un accesso reale con il gestore password.
