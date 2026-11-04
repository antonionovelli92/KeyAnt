# Continuità KeyAnt dopo la ripresa del 4 novembre 2026

## Punto da cui ripartire

Versione corrente: **0.6.55**, versionCode **82**. Scheda nella barra della tastiera, dettagli interni, Tasks OAuth/API implementato ma progetto Cloud ancora da registrare, risposta dei materiali al contatto.

La fonte completa è l’allegato **KeyAnt-0.6.55-history.bundle** della release GitHub, con tag `baseline-0.6.50`, `v0.6.51`, `v0.6.52`, `v0.6.53`, `v0.6.54`, `v0.6.55`. Il ramo GitHub principale contiene la documentazione e non è sufficiente da solo per ricompilare Android.


## Vincoli da preservare

- Fluidità di apertura, chiusura e comparsa; i cambi rapidi devono ripartire dallo stato visibile.
- Azioni dalla frase attive di default, disattivabili; rispettare una scelta già salvata.
- Freccia nello stesso spazio, tocco per la proposta e trascinamento per gli strumenti.
- Nessun invio automatico: conferma prima delle app esterne. Tasks ha il flusso diretto predisposto, ma OAuth Cloud è ancora da configurare (docs/GOOGLE_TASKS_SETUP.md); Copia e apri è un’alternativa nei dettagli; calendario diretto con permessi e conferma oppure editor esterno; telefono solo tastierino.
- Nessun azzeramento di appunti, memoria personale, preferiti e calibrazione.
- Pubblicare sorgenti, note, risultati reali e ripristino; escludere chiavi e credenziali.

## Test e limiti

Consultare `VERIFICA-0.6.55.md` per gli esiti di questa revisione. Eseguire `tools/verify_0655.sh` nell’ambiente descritto in `docs/BUILD_AND_RELEASE.md`. Il lint globale presenta debito preesistente: non confonderlo con un controllo superato né con una regressione automaticamente introdotta dalla nuova funzione.

La verifica Robolectric non misura fluidità, frame time o compatibilità delle versioni OEM sul Fold reale. Da controllare nell’uso: passaggio a Tasks/Calendar, Fold aperto e chiuso, digitazione rapida, trascinamento quando appare l’icona e ritorno alla normale freccia.


## Ripresa 0.6.54
Scheda inline `ActionCard654` / modello editor-bound `ActionDraft654`; `ActionAccess654` solo per consenso di sistema. `TasksClient654` usa AuthorizationClient e REST, registrazione Cloud ancora non effettuata (console non accessibile). `MaterialResponse654` condiviso live/anteprima. Leggere AGGIORNAMENTO_0.6.54.md e docs/GOOGLE_TASKS_SETUP.md prima di dichiarare funzionante il collegamento reale.

## Ripresa 0.6.55
Video 37149: barra vuota dopo fallimento, parser senza mesi e UI incoerente. Pillola basata sulle superfici esistenti; close/reset ripristinano la strip prima di animare l’uscita. Non reintrodurre callback tardivi showKeyAntTools. Tredici test di recupero in KeyAntRecovery655Test, inclusi la frase reale, invio simulato e mantenimento del blocco di una richiesta in corso. Tasks OAuth ancora da configurare; alternativa Calendario esplicita, anche nelle preferenze.
