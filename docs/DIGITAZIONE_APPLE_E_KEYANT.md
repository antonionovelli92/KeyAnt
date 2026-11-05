# Digitazione: cosa è documentato da Apple e cosa fa KeyAnt

Analisi del 5 novembre 2026, sorgenti KeyAnt 0.6.59. Richiesta: precisione del tocco, non soltanto correzione a parola terminata. Nessun nuovo decoder o nuovo modello linguistico viene attivato in questa release di manutenzione.

## Evidenze pubbliche Apple

Apple descrive alla WWDC 2019 l’adattamento delle aree di tocco invisibili secondo la parola probabile e il posizionamento delle dita. L’aspetto dei tasti resta fisso. Nella stessa presentazione illustra come le correzioni esplicite dell’utente possano migliorare la personalizzazione. Fonte primaria: [Designing Great ML Experiences](https://developer.apple.com/videos/play/wwdc2019/803/), trascrizione nelle sezioni su tastiera e feedback implicito.

Nel lancio di iOS 17 Apple documenta un modello linguistico transformer eseguito sul dispositivo e correzioni a livello di frase. [Comunicato Apple del 5 giugno 2023](https://www.apple.com/it/newsroom/2023/06/ios-17-makes-iphone-more-personal-and-intuitive/). Questo annuncio storico non dimostra quale versione del modello sia attiva sull’iPhone provato dall’utente, né le capacità specifiche della lingua italiana sul suo sistema.

Le fonti consultate non pubblicano codice completo, pesi, soglie e algoritmo corrente di decodifica della tastiera Apple. Non promettere di copiarli o di averli ricostruiti. L’esperienza riferita è utile per definire l’obiettivo, ma non è una misura controllata di accuratezza: telefoni, dimensioni, lingua, personalizzazione e impostazioni possono differire.

## Percorso verificato nel nostro codice

| Livello | Implementazione attuale | Limite osservato nel codice |
|---|---|---|
| Individuazione del tasto | `keyboard/KeyDetector.java`: coordinate corrette, vicini e hitbox; gestione degli overlap | Decide inizialmente sulla geometria, non sulla frase completa |
| Interpretazione predittiva del tocco | `keyforma/AdaptiveTouch.java`, richiamato da `PointerTracker.onDownKey` | Sperimentale e spento di default; richiede personalizzazione attiva; usa continuazioni di prefisso esatto dopo almeno due caratteri, non un transformer |
| Ricalibrazione personale | `keyforma/TouchCalibration.java` | Apprende aggregati locali solo dopo conferma esplicita nei suggerimenti, stessa lunghezza e al massimo una sostituzione; non apprende automaticamente da ogni testo digitato |
| Restituzione suggerimenti | `latin/inputlogic/InputLogic.java`: pubblicazione suggerimenti al livello adattivo, conferma parola alla calibrazione | Non equivale a una distribuzione probabilistica calibrata della frase: i pesi di AdaptiveTouch sono euristiche di rango |
| Movimento del dito e multitocco | `keyboard/PointerTracker.java`, hysteresis e stream distinti | Va provato il ciclo DOWN/MOVE/UP completo: un test della sola funzione di scelta non copre la consegna finale del carattere |

AdaptiveTouch lascia invariato il rettangolo centrale dal 12% all’88% su ciascun asse. Interviene solo vicino ai bordi: probabilità candidata almeno 0,70, margine almeno 0,55 e distanza normalizzata massima 0,12. Non attraversa la separazione della tastiera split. La geometria appresa è separata per layout; gli scostamenti applicati sono limitati al 3%. La scelta puramente geometrica appresa richiede almeno 80 campioni per entrambi i tasti confrontati. Questi sono limiti del codice, non risultati misurati sull’utente.

## Direzione di lavoro proposta

1. **Misurare dove nasce l’errore.** Separare tocco assegnato alla lettera sbagliata, carattere perso/doppio, correzione lessicale errata e ritardo grafico. Eseguire coppie di prove con/senza autocorrezione mantenendo uguali layout, lingua, frasi e ritmo. I puntini del video non forniscono da soli tutte le coordinate, gli ID e gli istanti DOWN/UP.
2. **Provare l’intero gesto prima di ampliare l’adattamento.** Confini tra tasti, microspostamenti, pressioni simultanee, doppie rapide, apostrofi e accenti italiani, pannello in rientro, una mano, landscape e Fold split. Misurare anche i cambiamenti sbagliati introdotti su tocchi originariamente corretti.
3. **Migliorare il modello di tocco.** Valutare una distribuzione per tasto con dispersione orizzontale/verticale e contesto di layout, combinata con evidenza linguistica locale. Mantenere un punto di ritorno alla sola geometria se la confidenza è bassa. Questa è una proposta KeyAnt, non una descrizione del codice Apple.
4. **Ridurre gli errori nelle prime lettere.** Il filtro attuale richiede un prefisso esatto di almeno due caratteri; valutare candidati con un errore iniziale senza ricerche pesanti nel thread dei tocchi. Non basta allargare tutte le hitbox, perché creerebbe nuovi conflitti.
5. **Migliorare la correzione contestuale separatamente.** Valutare un modello locale italiano soltanto dopo misure di memoria, tempi e precisione. Niente chiamate di rete per ogni pressione. Le parole corrette volontariamente dall’utente devono essere rispettate.

## Criteri per promuovere una modifica

Corpus di frasi italiane consentite e riproducibili, set di prova separato dai campioni usati per tarare le soglie; confronto errori carattere/parola, cancellazioni, modifiche indesiderate, velocità e latenza p50/p95. Verifica su telefono fisico dei frame e della prima risposta al tocco. Nessun “zero errori” dedotto da test sintetici o da animazioni fluide. Nessun cambiamento ai default del tocco in 0.6.59, nessun testo personale aggiunto ai log.
