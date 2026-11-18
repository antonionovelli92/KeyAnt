# KeyAnt 0.6.94 — orizzontale, menu e RGB

Pacchetto `it.keyant.keyboard`, versionCode 121. Base sorgenti 0.6.93: `e18ef636c1232deec246f32a1b4e34ae5b3ad790`.

## Larghezza e rotazione

La tastiera in orizzontale non applica più i due restringimenti automatici dei display larghi: margine calcolato per bilanciare i tasti e fattore del 90% sulla larghezza delle lettere. La modalità divisa conserva lo spazio centrale configurato senza aggiungere l'allargamento automatico previsto per il Fold verticale. La stessa politica viene usata dal parser del layout e dalle anteprime. Insets Android per navigazione/fotocamera e regolazioni manuali delle righe restano rispettati.

In verticale il Fold conserva il bilanciamento dei tasti. La descrizione dell'opzione Dimensioni ne esplicita l'ambito. Il comportamento precedente era già presente prima della 0.6.93.

## Menu ⋯

Ogni riquadro ha una fascia fissa per il simbolo e una fascia separata per il nome su due righe. Font ingranditi aumentano l'altezza necessaria anziché spostare le icone o tagliare le scritte. Tutta la tessera è cliccabile e ha un solo elemento accessibile. Materiali, finitura dei simboli e modalità solo icone usano gli stessi renderer della barra. Anche indietro e modifica seguono la decorazione.

Stock mantiene le icone originali. Il coordinamento aggiunge la superficie del tema; solo icone conserva il disegno senza la superficie. Il pannello si aggiorna alle modifiche di queste preferenze senza cambiare i comandi. Nascondere i simboli lascia nomi e azioni utilizzabili. Riordino, trascinamento, panchina e pulsanti di modifica conservati.

## Temi e luci

Il precedente pulsante RGB poteva impostare `rgb_enabled=true` lasciando il modo su `off`; inoltre copiava un colore fisso. Il comando condiviso con ANT ora seleziona un effetto visibile se necessario e la palette dinamica `theme`. Conserva effetto, intensità positiva e velocità già scelti. Lo spegnimento conserva le regolazioni e prevale sulle luci della creazione Maker attiva.

La scheda Luci del tema mostra stato, selezione e anteprima Android interattiva. Il collegamento Personalizza apre Luci ed effetti. Sistema/Chiaro/Scuro sono visibili accanto al tema attivo, senza il precedente titolo ambiguo Luminosità e regolazioni. Barra/menu, superfici e luci sono raggruppati; suoni e vibrazione rimandano alla loro pagina. La galleria usa l'altezza effettiva dei contenuti.

## Verifiche e distribuzione

Il rapporto `VERIFICHE-0.6.94.txt` riporta gli esiti effettivi, distinti da immagini e combinazioni. Confronti di render Android nativi; nessuna prova sul telefono fisico, misura FPS o HDR dichiarata. I video personali non fanno parte dei sorgenti pubblici.

APK con firma originale, aggiornabile senza disinstallare. Sorgenti completi nell'asset `KeyAnt-0.6.94-sorgenti.zip`, cronologia nel bundle, patch dalla 0.6.93. Il ramo GitHub principale è documentale; gli archivi automatici Source code non sostituiscono il progetto completo allegato.
