# KeyAnt 0.6.49 — Satin e fondi regolabili

## Novità

- Nuova categoria **Satin** con Corallo, Ambra, Ghiaccio e Rosa. Il riferimento è la tastiera antracite piatta: facce opache, carattere leggero, tasti funzione grigio scuro, Cancella colorato. Il fondo parte al 96% di opacità e con blur delicato da 8 dp dove Android lo consente; tasti normali e funzione partono solidi.
- Materiale Satin e palette antracite/corallo disponibili nel Maker. Le varianti mantengono la stessa geometria e cambiano l’accento; le legende sulle varianti più chiare diventano scure per restare leggibili.
- Selettore **Materiale del tema / Solido / Trasparente senza sfocatura / Vetro**. Opacità e intensità della sfocatura sono indipendenti.
- **Trasparenza unificata** collega fondo della tastiera, fondo della barra degli strumenti e fascia inferiore. Ora prevale anche sulle famiglie Liquid e sui temi Maker. Non modifica opacità dei tasti, legende o superfici dei singoli pulsanti della barra.
- All’attivazione iniziale il controllo unificato parte dall’opacità effettiva, evitando un salto arbitrario. Disattivandolo si recuperano i valori separati, che non vengono cancellati.
- Anteprime con lo stesso renderer dei tasti; lo sfondo dimostrativo cambia realmente quando si regolano opacità e blur. La larghezza delle anteprime è limitata sui display aperti; su Fold i pannelli Materiale e Fondo unificato sono affiancati. Le regolazioni specifiche Xbox compaiono solo quando è attivo quel materiale.

## Come provarlo

1. Aspetto e temi → categoria Satin → Corallo. La scheda permette l’anteprima senza cambiare il tema; il selettore lo applica.
2. Aprire **Regola le superfici del tema** per sfondo, tasti normali e funzione.
3. Nelle impostazioni di trasparenza scegliere **Vetro** e regolare la sfocatura. L’opacità indica quanto si vede attraverso; il blur indica quanto è sfocato ciò che si vede.
4. Attivare **Trasparenza unificata** per usare lo stesso fondo nelle tre zone. Per ripristinare i valori precedenti basta disattivarla. La fascia inferiore si può regolare anche separatamente, senza cambiare il fondo dei tasti. I controlli numerici mantengono il ripristino al riferimento già disponibile nell’app.

Il tema conserva disposizione, dimensioni e riga numerica scelte dall’utente. La fotografia è una vista prospettica di un altro dispositivo: il materiale è ricostruito nel renderer nativo, non una fotografia stesa sulla tastiera. Non viene dichiarata un’identità pixel per pixel con la foto, né un’identità fisica su tutti gli schermi.

## Sfocatura reale e limiti Android

Si usa la sfocatura tra finestre del sistema, non la cattura del contenuto delle altre app. Il blur richiede Android 12 o successivo e il supporto attivo del dispositivo; alcune modalità di risparmio energia possono sospenderlo. L’app in primo piano decide cosa disegnare dietro la tastiera. Se il sistema non offre il blur, resta la trasparenza; il valore scelto rimane salvato. Le anteprime sono sempre segnalate come dimostrative. Nella disposizione divisa il blur resta sospeso per non riempire i varchi tra le due metà. La tastiera flottante conserva la sua gestione preesistente del fondo.

## Calibrazione e correzione

Le impostazioni distinguono l’inizio della calibrazione a 20 campioni dall’intervento senza previsione del dizionario: quest’ultimo richiede almeno 80 conferme per entrambe le lettere sul bordo condiviso. La calibrazione continua a imparare oltre 200 conferme; 200 resta il peso massimo della media.

Non sono state alterate soglie, campioni, correzione contestuale, apprendimento, pillole o gestione password. I conteggi aggregati non misurano da soli gli errori di battitura e non giustificano un aumento automatico dell’aggressività. Le disposizioni con dimensioni uguali possono avere geometrie diverse e non vengono accorpate sulla sola base della risoluzione.

## Ripristino e verifica

Baseline conservata: 0.6.48. Istruzioni e patch di ripristino mirato in `maintenance/rollback-0649/`. La versione APK usa versionCode 76 e la stessa chiave personale della 0.6.48.

Risultati dei test e limiti della verifica sono registrati in `validation/0.6.49/VERIFICA.md` nell’archivio personale e nell’allegato pubblico `VERIFICA-0.6.49.md`. Nessuna prova su un Fold fisico viene implicitamente dichiarata dai test software.
