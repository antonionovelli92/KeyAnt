# Verifica KeyAnt 0.6.60

**253 test superati in 46 classi**, zero fallimenti/errori/casi saltati. Suite riproducibile tools/verify_0660.sh; conteggi per classe in TEST-RESULTS-0.6.60.json.

## Nuovi controlli

- Materiali coordinati: 20 identità condivise da tasti, barra e sfera; rimozione della sola superficie, disegni delle icone conservati e dimensioni di tocco invariate. Rotazione delle texture della sfera. Switch opaco reversibile con confronto dei pixel e di tutti i valori salvati, anche Maker e Xbox; interruttori raggiungibili nelle schermate Compose.
- Numeri in lettere, sera/oggi, ore senza data, durata, fine e mezzanotte; rifiuto di intervalli incompleti, orari impossibili e durate contraddittorie. Numeri civici e date senza orario non vengono usati come ora.
- Verde pieno realmente presente nei pixel della pillola, non soltanto come drawable assegnato. Comparsa anche con conferma prima del termine dell’ingresso; permanenza almeno 900 ms prima del distacco, suggerimenti ripristinati. Una nuova frase sopravvive al timer della vecchia conferma.
- Il calendario invoca il feedback soltanto dopo entrambe le scritture simulate (evento e avviso). Promemoria locale senza trasporto Google né scritture calendario: un solo avviso, record distinto dalla Task e una sola notifica alla consegna ripetuta. Permessi negati e Task salvata senza avviso locale non producono verde di successo pieno.
- Disattivazione globale senza reintroduzione degli accenti dal livello linguistico; menu personalizzati Invio/Punto e funzioni Spazio/Shift/Simboli/Cancella. Pressione ferma consegnata prima di UP; swipe annulla il timer. Digitazione di Invio e apertura numeri restano possibili con menu spenti.
- Migrazione calendario una sola volta, successiva scelta rispettata, numeri indipendenti. Switch Compose del calendario acceso e poi spento; pagina menu secondari e scelta esplicita promemoria locali.
- Renderer pannello: tutte le cifre hanno contenuto disegnato e il click reale su 5 consegna 5; quattro temi e passaggi ripetuti di layout. Calendario dopo cambio mese, landscape, una mano e split. Fondo pannello trasparente sopra la scocca condivisa. Nessun layer software per i figli.
- Regressioni esistenti: doppie rapide, multitocco, prima lettera durante il rientro, geometrie Fold, calibrazione, appunti/video, privacy, materiali, Maker e salvataggi simulati.

## Problemi scoperti durante la verifica

Il controllo storico del catalogo sfera è aggiornato da 86 a 106 elementi, includendo i 20 abbinamenti; restano le verifiche dei vecchi stili e delle loro mappe di rilievo. Il primo controllo della disattivazione ha rilevato che gli accenti venivano riaggiunti dal livello linguistico: il menu esplicitamente configurato ora evita quel merge. Una conferma immediata poteva cancellare l’ingresso quando l’opacità era ancora zero: il successo ripristina opacità e posizione. I test dei timer sono collegati a una finestra reale di Robolectric; i touch usano coordinate comprensive del padding. Il rendering nativo può far avanzare il clock dei frame durante idleFor: la permanenza è misurata tramite timestamp di conferma e distacco, senza assumere che idleFor(150) avanzi sempre di soli 150 ms. Nessun controllo di inserimento è stato eliminato. Il vecchio test che rifiutava «alle 9» senza data ora verifica oggi alle 9, comportamento richiesto in questa versione. Il test che usava data/ora come titolo di ripiego ora attende un titolo vuoto; un nuovo test di conferma verifica che quella frase non produca scritture né verde.

## Build

APK firmato 0.6.60, versionCode 87, non debuggable, package it.keyant.keyboard. Firma invariata, zipalign 16 KiB e integrità ZIP verificati.

SHA-256 APK: a123a3f93c826e7cedf868f64452957fb666b1f82a5c51c7077683cb85608d18.
Certificato SHA-256: bf7bc5998c63e50de960d4506499dce857cea819468673d0ca52d31bed527aa4.

## Lint e limiti

Lint resta non superato per 550 errori, 450 avvisi e 1 suggerimento preesistenti. Nessuna nuova segnalazione rispetto alla baseline, confronto per ID, severità, messaggio e file. Rimosse: 0.

Test Android con Robolectric/grafica nativa, principalmente API 35; il controllo firma legacy comprende API 26. Nessun test su Fold fisico, nessuna misura FPS o benchmark di precisione, nessuna autorizzazione Google reale riuscita. Calendario e rete sono simulati; la notifica locale è verificata nel framework di test, non a telefono bloccato. La nuova correzione del rendering richiede conferma sul renderer OEM. Non è stata completata la registrazione OAuth e non è stata attivata fatturazione Cloud.
