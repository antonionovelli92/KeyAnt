# Verifica KeyAnt 0.6.55 — 4 novembre 2026

## Esito

- **154 test superati in 25 classi**, zero fallimenti/errori/saltati. Comprendono 12 nuovi casi di recupero e i 142 controlli della suite precedente. Dopo l’ultima rifinitura dell’accessibilità del comando di trascinamento sono passati anche tutti i **13 controlli di recupero finali**, inclusa una nuova prova del trascinamento dalla pillola agli strumenti.
- APK `it.keyant.keyboard`, versione **0.6.55**, versionCode **82**, minSdk 26, targetSdk 35, non debuggable.
- Firma SHA-256 invariata: `bf7bc5998c63e50de960d4506499dce857cea819468673d0ca52d31bed527aa4`.
- `apksigner verify`, `zipalign -c -P 16 4` e integrità ZIP dell’APK riusciti.
- APK SHA-256: `b7729629bc9ef9f3f6118f77360860850cd951b67e801385721c736540ab10ad`.

## Regressioni riprodotte e coperte

1. Frase reale «per il 5 novembre alle 9 prendere il latte»: data/ora e titolo separati correttamente; invio al provider simulato con timestamp corretto.
2. Riepilogo Tasks con data dopo collegamento fallito: nessun crash del DateTimeFormatter; messaggio visibile, alternativa Calendario disponibile.
3. Reset dopo fallimento e chiusura dopo esito incerto: suggerimenti, freccia e tasti tornano visibili; nessun reinvio.
4. Digitazione normale chiude la revisione e riattiva la barra; la modifica esplicita del titolo resta interna.
5. Evento senza data apre la selezione, senza scrivere o mostrare successo.
6. Alternativa Calendario scelta esplicitamente: un solo evento/avviso simulato, senza token Google.
7. Chiusura durante l’invio: il modello conserva il blocco per invio in corso, riuscito o incerto.
8. Animazione di chiusura seguita subito dall’apertura della calcolatrice: il nuovo pannello non viene sostituito.
9. Preferenza Calendario per promemoria rispettata; nessuna conversione automatica di una destinazione scelta dall’utente.
10. Render pillola/dettagli e larghezza landscape con superficie condivisa; test preesistenti per tastiera, appunti, privacy, materiali, gesti e suggerimenti.

Le prime esecuzioni hanno individuato il crash del pattern Tasks e una dipendenza dal post su una vista non ancora agganciata. Entrambi corretti; il conteggio sopra riguarda la suite completa successiva alle correzioni. L’ultimo avviso di accessibilità del comando di trascinamento è stato risolto con un controllo dedicato che implementa performClick, seguito dalla verifica mirata e dal nuovo assemble/lint. Script riproducibile: `tools/verify_0655.sh`.

## Lint e limiti

Il lint completo **non passa** per il debito preesistente: **550 errori, 450 avvisi, 1 suggerimento**. Zero segnalazioni nuove o rimosse rispetto alla baseline già verificata nelle 0.6.53/0.6.54 (confronto ID/severità/messaggio/file). Il comando complessivo termina con errore per questo lint; test e assemble sono completati.

Robolectric API 35 e provider/trasporti simulati non provano salvataggi su account Google reali, sincronizzazione OEM, TalkBack o fluidità/FPS sul Fold e Pixel fisici. Le schermate allegate sono render di test, non screenshot del telefono personale. L’intero video utente non viene pubblicato.

Tasks OAuth resta da registrare/configurare come indicato nella guida; non dichiarare risolto il collegamento reale. La funzione Calendario è indipendente da OAuth ma richiede i permessi Android e un calendario scrivibile. L’alternativa crea un evento, non una Google Task. Nessuna scrittura su account reale eseguita durante i test.

## Recupero

Progetto completo e bundle con cronologia allegati; main GitHub documentale. Chiave privata, token, bozze, video e dati personali esclusi. Consultare ROLLBACK-0.6.55.md.
