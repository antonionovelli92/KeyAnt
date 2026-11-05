# Verifica KeyAnt 0.6.63

349 test superati in 62 classi, aggregando l’ultima esecuzione per caso. Zero fallimenti, errori o saltati finali. Il primo giro è stato interrotto con exit 137 dal processo di test. I gruppi finali usano JVM separate da 768 MiB per contenere le allocazioni native. Sono stati corretti due controlli legati al comportamento precedente: ordine degli interruttori e inserimento immediato della data. Numeri e Calendario sono stati riportati vicini; la data si inserisce ora dall’agenda tramite il comando esplicito. Un test storico degli appunti ora avvia esplicitamente il servizio IME prima di costruire la vista: eseguito in una JVM isolata mancava l’inizializzazione delle impostazioni. Le asserzioni sul feedback restano invariate. Nessun test eliminato.

## Pannelli e agenda

Test delle condizioni di affiancamento: opzione, orientamento, lato corto, spazio reale e layout unito. Integrazione di entrambi i lati: scrittura sul tasto principale, swipe inverso e ripristino geometria dopo split. Invio ripetuto mantiene aperto il tastierino. Stretto riduce realmente la larghezza. RGB indipendente e ritorno all’eredità non modificano le preferenze principali.

Agenda simulata: ricorrenze, eventi interi UTC, fine esclusiva a mezzanotte, assenza permesso, provider non disponibile, aggiornamento da ContentObserver, chiusura e assenza di scritture. Test della vista giorno e inserimento testuale con pannello affiancato aperto. Non è una verifica della sincronizzazione Google reale.

## Studio e split

Interazione delle selezioni e persistenza, nuovo interruttore disattivato di default, link Audience, ricerca, render telefono e Fold verticale/orizzontale. Controllo del rapporto larghezza/altezza della preview. Test pixel sui glifi prima e dopo il rilascio dello split, apertura e chiusura, geometrie 360 e 760; regressioni delle metà della spaziatrice già presenti.

## Riconoscimento e APK

La regressione nativa ICU compila 56 espressioni; errore storico 66308 riprodotto, correzione conservata. Motore libicui18n.so.76 della macchina di test, non del telefono.

Versione 0.6.63, codice 90, non debuggable. Integrità ZIP, zipalign 16 KiB, firma invariata verificati. SHA-256 APK: 2f2d9ed5348c6385f20c868369990719d40ac38ddab811deb78c921683dd6edf.
Certificato SHA-256: bf7bc5998c63e50de960d4506499dce857cea819468673d0ca52d31bed527aa4.

Lint non superato: 550 errori, 449 avvisi, 1 suggerimento preesistenti; zero nuove segnalazioni nel confronto ID, severità, messaggio e file. Nessuna soppressione globale.

## Limiti

Nessun dispositivo fisico, misura FPS o confronto di precisione con iPhone. OAuth, account Google e scritture reali non testati. Il blocco 403 richiede aggiunta dell’account agli utenti di test. Nessuna carta o fatturazione attivata. Video personali e diagnostica grezza esclusi dagli archivi pubblici.
