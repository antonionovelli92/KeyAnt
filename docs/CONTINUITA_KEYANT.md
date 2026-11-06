# Continuità KeyAnt

## Punto da cui ripartire

Versione sorgente **0.6.68**, versionCode **95**, baseline **v0.6.67 / 51f0ef36ce017c3ec4ba82ca76095c080cd088eb**. Consultare AGGIORNAMENTO_0.6.68.md, VERIFICA-0.6.68.md e TEST-RESULTS-0.6.68.json. Questi documenti descrivono i controlli realmente eseguiti; non dedurre il completamento della pubblicazione dal solo numero di versione.

Il ramo principale GitHub è documentale. Il progetto completo viene conservato negli archivi sorgenti pubblici e nel bundle della cronologia. La configurazione Tasks è dichiarata funzionante dall'utente sul proprio telefono, ma non verificata con account reali nell'ambiente di build.

## Vincoli da preservare

- Calendario: terzo gesto opzionale dalla prima icona visibile verso destra. Non aggiungere il gesto dei numeri sulla destra della barra.
- Swipe tra strumenti e parole indipendenti e attivi di default; i tocchi restano utilizzabili. Controlli ripetuti nei menu usano le stesse preferenze, con un solo risultato di ricerca.
- Calendario affiancato sul Fold orizzontale indipendente dai numeri, default OFF; split, rotazione e geometria devono rimuovere vecchie traslazioni.
- L'icona cede spazio alla pillola e ritorna con la X, conservando il contesto. Salvataggio, conferma, destinazioni e Undo invariati.
- Temi derivati China: conservare il materiale e il popup originali, il profilo scolpito e le personalizzazioni Maker.
- Solidità: override reversibile, senza riscrivere opacità, colori o memoria personale.
- Nessuna modifica al compromesso iniziale icone/suggerimenti: l'utente stava ragionando, non ha scelto un nuovo default.
- Nessun azzeramento di appunti, statistiche, preferiti, calibrazione o account. Non pubblicare chiavi, credenziali e video personali.
- Link APK definitivo dopo test, pubblicazione e verifica dell'asset. ROLLBACK-0.6.68.md indica il ripristino sicuro senza disinstallazione.

## Test e limiti

Usare tools/verify_0668.sh. Robolectric SDK 35 e rendering nativo verificano stato, eventi e pixel, non FPS né il comportamento hardware del Fold/Pixel. Le integrazioni vengono provate con provider e trasporti simulati; OAuth, sincronizzazione remota e notifiche a schermo spento richiedono il dispositivo. Il debito lint è riportato separatamente dal risultato dei test.

## Cronologia

Le note seguenti sono storiche e non descrivono lo stato corrente degli account o della release.

## Ripresa 0.6.54
Scheda inline `ActionCard654` / modello editor-bound `ActionDraft654`; `ActionAccess654` solo per consenso di sistema. `TasksClient654` usa AuthorizationClient e REST, registrazione Cloud ancora non effettuata (console non accessibile). `MaterialResponse654` condiviso live/anteprima. Leggere AGGIORNAMENTO_0.6.54.md e docs/GOOGLE_TASKS_SETUP.md prima di dichiarare funzionante il collegamento reale.

## Ripresa 0.6.55
Video 37149: barra vuota dopo fallimento, parser senza mesi e UI incoerente. Pillola basata sulle superfici esistenti; close/reset ripristinano la strip prima di animare l’uscita. Non reintrodurre callback tardivi showKeyAntTools. Tredici test di recupero in KeyAntRecovery655Test, inclusi la frase reale, invio simulato e mantenimento del blocco di una richiesta in corso. Tasks OAuth ancora da configurare; alternativa Calendario esplicita, anche nelle preferenze.

## Ripresa 0.6.56
Usare il tag v0.6.56 del bundle. Vedere AGGIORNAMENTO_0.6.56.md, VERIFICA-0.6.56.md e la guida Tasks aggiornata. Per il confronto esatto dei pannelli occorre identificare la sequenza originale. Per il test reale Tasks occorre completare OAuth.

## Ripresa 0.6.57
Usare il tag v0.6.57 del bundle. Ultimo contratto: icona predefinita, apertura automatica opzionale, X conserva il contesto; niente apertura obbligatoria. Pannelli traslano MainKeyboardView e misurano le proprie righe subito. Il primo stream di digitazione corregge il movimento della vista, senza alterare la mappa dei tasti. Ritiro persistente media agganciato al contenuto mostrato. OAuth reale ancora aperto: console inaccessibile, nessun codice specifico deducibile dal video. Leggere aggiornamento e verifica della release.

## Ripresa 0.6.58
Ultimi video 37191/37192: Tasks codice 8, pannelli ancora vuoti sul telefono. Nuova pagina Pannelli laterali con switch indipendenti; numeri da Invio a destra, calendario da funzione a sinistra. Geometria esplicita delle righe/colonne, primo reveal invalida i figli. Gesto nativo con linea configurabile e default false. Non dichiarare risolto OAuth reale né certificati FPS/dispositivo fisico: 8 è errore interno generico, diverso dal 10. Nuovo test KeyAntPanels658Test e suite tools/verify_0658.sh.

## Ripresa 0.6.59
Video 37196 conferma numeri invisibili ma cliccabili anche nella 0.6.58. Layer software limitato al pannello, outline clipping rimosso; conferma hardware ancora necessaria. Guida OAuth espandibile con dati del certificato installato; registrazione Cloud ancora non completata, codice 8 non risolto. Studio Apple in docs/DIGITAZIONE_APPLE_E_KEYANT.md: nessuna modifica al decoder o ai default del tocco. Fonte completa tag v0.6.59 nel bundle, non nel ramo documentale GitHub.

## Ripresa 0.6.66
Crash riprodotto in ToolbarLook.icon: ColorUtils.calculateContrast rifiuta uno sfondo traslucido. Comporre su un riferimento opaco solo per il calcolo. FormaColors usa l’inchiostro dei materiali scolpiti anche con sistema scuro. X di EmojiSearchPanel/GifPanel chiude; freccia torna alle emoji. Oggi ha un anello disegnato dopo i materiali, verificato sui pixel e non solo sul flag accessibile. MagicBallDock segue il progresso dei pannelli; PanelMotion666 usa un completamento monotono con velocità iniziale e velocità finale zero. Comandi numbers/calendar in ToolCatalog e overflow, anche a gesture disabilitate. Controlli completi in edge_panels con ricerca canonica; stessi valori condivisi. China originale e identificatori Maker conservati. Consegnare il link solo dopo test, firma e verifica degli allegati pubblicati.


## Checkpoint 0.6.67

Base c394c14809e41261e55d84c95b46834a19a96231 (0.6.66). Intervalli temporali composti, gesti immediati opzionali, esiti compatti, visualizzazioni alternative della barra, catalogo unificato e guardia contro risposte tardive del dizionario. Vedere AGGIORNAMENTO_0.6.67.md, VERIFICA-0.6.67.md e ROLLBACK-0.6.67.md. Preferenze precedenti conservate; nessuna nuova destinazione dei dati.
