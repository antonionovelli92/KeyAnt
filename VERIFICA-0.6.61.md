# Verifica KeyAnt 0.6.61

322 test superati in 55 classi; zero fallimenti, errori o saltati. Suite tools/verify_0661.sh; suite estesa seguita da riesecuzione mirata dei test aggiornati, risultati per classe in TEST-RESULTS-0.6.61.json.

## Controlli

- Sequenze numero di telefono, ricordami di, evento su finestra collegata, tema Disegno China e icona animata: nessun arresto riprodotto. Questo non prova che il crash del telefono sia risolto.
- Eccezione iniettata nel riconoscimento: recupero barra, sospensione delle azioni nella sessione, testo privato escluso dalla diagnostica e ripresa alla sessione successiva.
- Numeri: cinque righe occupano tutta l’altezza in telefono, landscape e split. Spazio continua; A capo inserisce una nuova riga senza inviare messaggi; nove scelte, valore sconosciuto e cambio editor verificati.
- Split: due spaziatrici dal primo frame, posizione iniziale/finale e apertura del vuoto centrale prima del cambio layout. Otto fotogrammi in apertura/chiusura col renderer del tema. Split verticale spento di default, opt-in e profilo largo conservato.
- Ricerca: click della lente, focus immediato, inserimento e risultato della ricerca. La richiesta di apertura IME richiede conferma su dispositivo reale. Pagina scura, navigazione Animazioni/Indietro, categorie e scelta del comando numerico.
- Pillola rossa su dati incompleti o errore, ripristino alla modifica, chiusura; esito di rete incerto impedisce doppio invio. Regressioni del verde dopo salvataggio simulato, dei permessi, dei suggerimenti e dei media.
- Regressioni di digitazione rapida, multitocco, geometrie Fold, pannelli, materiali, trasparenza, promemoria locali, calendario e privacy.

## Correzioni alla verifica

Il controllo storico del contrasto confrontava il colore opaco del pigmento Smoke con il bianco, mentre il materiale disegna quel pigmento al 48% sul fondo scuro. Il test ora usa la composizione della superficie reale per quella famiglia, mantenendo la soglia 4,5; nessun colore del tema è stato cambiato. Il focus della ricerca passa immediatamente; il test attende il debounce della ricerca prima di verificare il risultato. Le anteprime numeriche ricreano la gerarchia dopo il cambio tema, come l’app, evitando di fotografare una vecchia tastiera Xbox accanto al pannello China. Il gap della spaziatrice viene verificato sui pixel intermedi, oltre alle coordinate.

## Build e limiti

APK firmato 0.6.61, versionCode 88, non debuggable. Integrità ZIP, zipalign 16 KiB e firma invariata verificati.
SHA-256 APK: 048a6f0a5fe1d237eedc7790dce33573364d3716f7030c432796492cb79305d7.
Certificato SHA-256: bf7bc5998c63e50de960d4506499dce857cea819468673d0ca52d31bed527aa4.

Lint non superato: 550 errori, 450 avvisi e 1 suggerimento preesistenti. Nessuna nuova segnalazione rispetto alla baseline (ID, severità, messaggio, file); rimosse 0.

Robolectric con grafica nativa, principalmente API 35. Nessun telefono fisico, misura FPS o benchmark di accuratezza. Salvataggi calendario, Tasks e notifiche simulati. OAuth reale ancora non collegato; nessuna fatturazione attivata. La causa dell’arresto sul Fold resta da identificare mediante diagnostica reale; le protezioni non coprono arresti nativi, memoria o ogni callback grafico.
