# Continuità KeyAnt dopo la ripresa del 4 novembre 2026

## Punto da cui ripartire

Versione corrente: **0.6.59**, versionCode **86**. Pillola a conferma singola, pannelli laterali e profili scolpiti. Il client OAuth Android deve ancora essere registrato su Google Cloud.

La fonte completa è l’allegato **KeyAnt-0.6.59-history.bundle** della release GitHub, con tag `baseline-0.6.50`, `v0.6.51`, `v0.6.52`, `v0.6.53`, `v0.6.54`, `v0.6.55`, `v0.6.56`, `v0.6.57`. Il ramo GitHub principale contiene la documentazione e non è sufficiente da solo per ricompilare Android.


## Vincoli da preservare

- Fluidità di apertura, chiusura e comparsa; i cambi rapidi devono ripartire dallo stato visibile.
- Azioni dalla frase attive di default, disattivabili; rispettare una scelta già salvata.
- Freccia nello stesso spazio, tocco per la proposta e trascinamento per gli strumenti.
- Nessun invio automatico: conferma prima delle app esterne. Tasks ha il flusso diretto predisposto, ma OAuth Cloud è ancora da configurare (docs/GOOGLE_TASKS_SETUP.md); calendario diretto con permessi e conferma oppure editor esterno; telefono solo tastierino.
- Nessun azzeramento di appunti, memoria personale, preferiti e calibrazione.
- Pubblicare sorgenti, note, risultati reali e ripristino; escludere chiavi e credenziali.

## Test e limiti

Consultare `VERIFICA-0.6.59.md` per gli esiti di questa revisione. Eseguire `tools/verify_0659.sh` nell’ambiente descritto in `docs/BUILD_AND_RELEASE.md`. Il lint globale presenta debito preesistente: non confonderlo con un controllo superato né con una regressione automaticamente introdotta dalla nuova funzione.

La verifica Robolectric non misura fluidità, frame time o compatibilità delle versioni OEM sul Fold reale. Da controllare nell’uso: passaggio a Tasks/Calendar, Fold aperto e chiuso, digitazione rapida, trascinamento quando appare l’icona e ritorno alla normale freccia.


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
