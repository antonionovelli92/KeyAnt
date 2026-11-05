# KeyAnt 0.6.66 · Pannelli, ricerca e materiali

## Crash e leggibilità

Riprodotto un arresto nei nuovi temi Disegno: il calcolo del contrasto della barra icone riceveva un colore traslucido, non ammesso da ColorUtils. Il contrasto viene ora calcolato sul colore composto; la superficie visiva mantiene la propria trasparenza. La regressione include tutti e quattro i materiali, con e senza superficie dei pulsanti.

I temi scolpiti chiari usano il proprio colore del testo anche quando Android è in modalità scura. Questo corregge testo e comandi quasi bianchi nelle pillole chiare. Il fondo delle pillole conserva una base leggibile con trasparenza adattata alla luminosità. Nessun cambiamento alle destinazioni o alla conferma delle azioni.

## Ricerca emoji e GIF

La X chiude la ricerca e restituisce la digitazione alla tastiera normale. La freccia torna alla selezione emoji. La query resta fuori dal campo del messaggio. Entrambi i comandi hanno descrizioni accessibili e feedback al tocco. L’attribuzione GIPHY resta visibile.

## Pannelli laterali

Il completamento del trascinamento prosegue dalla posizione e dalla velocità del dito, poi rallenta fino all’arresto senza oltrepassare il punto finale. Stessa geometria per disegno e tocchi, apertura e ritorno; le anteprime usano lo stesso andamento temporale. Le opzioni Seta, Cascata, Scorrimento e Nessuna restano disponibili e rispettano la riduzione delle animazioni.

La trackball e il comando centrale dello split seguono lo spostamento e sfumano quando entra il pannello; non possono restare sopra i tasti o ricomparire durante un nuovo layout. Tornano disponibili alla chiusura. Questo comprende il calendario richiamato da ABC nel livello simboli.

Oggi è identificato da un contorno luminoso persistente sopra ogni materiale, compresi i tasti scolpiti. Non serve un’animazione continua a riposo. L’intestazione del mese contiene soltanto mese, precedente e successivo: rimossi Cancella e X. Si richiude con il gesto inverso, con il comando nella barra o tornando a scrivere nella modalità normale. In modalità affiancata sul Fold resta disponibile insieme alle lettere.

Calendario e Tastierino numerico sono disponibili in ⋯ e possono essere fissati alla barra o riordinati. Un secondo tocco sullo stesso comando richiude il pannello. I comandi funzionano anche se i relativi gesti sono disattivati: non modificano le preferenze dei gesti.

## Impostazioni complete

Pannelli laterali raccoglie interruttori separati, animazione, modalità Fold, comando del tastierino, anteprima, tema, larghezza, dimensione, luci e suoni. Timbro e volume sono esplicitamente condivisi con la tastiera principale; il calendario resta silenzioso. Le stesse opzioni accessibili da Aspetto agiscono sugli stessi valori. Nella ricerca i controlli condivisi dei pannelli vengono ricondotti a una sola destinazione; suono e volume generali restano sotto Suoni e vibrazione.

## Categoria Disegno

- **China · Rosso**: corpo, fianchi, struttura e pressione di China originale, con Cancella rosso.
- **China · Fumé nero**, **China · Vetro viola**, **China · Cristallo blu**: geometria di China con superfici traslucide, fianchi alleggeriti e riflessi; non tre ulteriori tasti Cancella rossi.

Disegno · China originale resta in Profili scolpiti. Gli identificatori dei quattro temi rimangono gli stessi per conservare selezioni, preferiti e creazioni Maker. Le creazioni con colori personalizzati continuano a rispettarli. Disattiva trasparenze rende opachi anche questi materiali senza cancellare le regolazioni precedenti.

## Digitazione e aggiornamenti

Il riconoscimento della lingua recente riutilizza un’espressione precompilata e limita l’analisi alla coda del testo, evitando lavoro proporzionale alla lunghezza dell’intero campo a ogni correzione. Restano le protezioni bilingui e le prove su digitazione rapida, doppie lettere, split, privacy e calibrazione. Non viene dichiarata una replica dell’algoritmo proprietario Apple né una misura di FPS su telefono.

È possibile passare direttamente da una vecchia versione all’ultima APK, senza installare tutte le intermedie: pacchetto it.keyant.keyboard, stessa firma e codice versione crescente. Installare come aggiornamento, senza disinstallare. Dati e autorizzazioni del telefono della partner restano suoi; l’APK non trasferisce l’account Google o le credenziali di Antonio. Le integrazioni richiedono i permessi e, per Tasks, l’accesso Google del dispositivo interessato.

Verifiche effettive e limiti in VERIFICA-0.6.66.md; sorgenti e storico completo negli allegati della release. Nessuna modifica alla fatturazione o alla configurazione dell’account Google.
