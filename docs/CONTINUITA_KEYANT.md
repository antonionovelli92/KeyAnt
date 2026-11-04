# Continuità KeyAnt dopo la ripresa del 4 novembre 2026

## Punto da cui ripartire

Versione corrente: **0.6.53**, versionCode **80**. Aggiunge materiali con pressioni distinte, glow sul contorno delle azioni e salvataggio diretto nel calendario.

La fonte completa è l’allegato **KeyAnt-0.6.53-history.bundle** della release GitHub, con tag `baseline-0.6.50`, `v0.6.51`, `v0.6.52`, `v0.6.53`. Il ramo GitHub principale contiene la documentazione e non è sufficiente da solo per ricompilare Android.


## Vincoli da preservare

- Fluidità di apertura, chiusura e comparsa; i cambi rapidi devono ripartire dallo stato visibile.
- Azioni dalla frase attive di default, disattivabili; rispettare una scelta già salvata.
- Freccia nello stesso spazio, tocco per la proposta e trascinamento per gli strumenti.
- Nessun invio automatico: conferma prima delle app esterne. Tasks resta “Copia e apri” (OAuth non configurato, vedi RICERCA-0.6.53.md); calendario diretto con permessi e conferma oppure editor esterno; telefono solo tastierino.
- Nessun azzeramento di appunti, memoria personale, preferiti e calibrazione.
- Pubblicare sorgenti, note, risultati reali e ripristino; escludere chiavi e credenziali.

## Test e limiti

Consultare `VERIFICA-0.6.53.md` per gli esiti di questa revisione. Eseguire `tools/verify_0653.sh` nell’ambiente descritto in `docs/BUILD_AND_RELEASE.md`. Il lint globale presenta debito preesistente: non confonderlo con un controllo superato né con una regressione automaticamente introdotta dalla nuova funzione.

La verifica Robolectric non misura fluidità, frame time o compatibilità delle versioni OEM sul Fold reale. Da controllare nell’uso: passaggio a Tasks/Calendar, Fold aperto e chiuso, digitazione rapida, trascinamento quando appare l’icona e ritorno alla normale freccia.
