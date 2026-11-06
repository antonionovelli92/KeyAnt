# KeyAnt 0.6.71

## Correzioni
- Ricerca GIF: la freccia durante la scrittura torna al pannello GIF corrente, conservando query e risultati. X chiude verso la tastiera. Il ritorno dalle emoji resta distinto.
- Ctrl+V, gesto Incolla e comando Incolla condividono la scelta dei media della pillola: immagine recente, appunti attuali e testo rispettano l'ordine delle copie. Gli URI content:// non vengono scritti come testo. Se il file è già acquisito, si usa la pipeline immagini con MIME e conversioni; altrimenti si tenta l'incolla nativo dell'app. Le app devono supportare contenuti multimediali. Ctrl+C continua a copiare il testo selezionato: non estrae immagini arbitrarie dalla pagina ospite.
- Frasi naturali per eventi/promemoria: «ricordami domani alle 15:30 di entrare su discord» produce «entrare su discord». La preposizione interna a «lezione di inglese» e il nome «Di Maggio» restano integri. Il collegamento iniziale «di» viene riconosciuto davanti all'infinito, non eliminato globalmente.
- Titoli espliciti con «chiamato», «intitolato», «dal titolo» o tra virgolette sono protetti dall'estrazione di date e indirizzi. «chiamato Pieraccioni and Friends in vja parco dei Medici» separa titolo e luogo; il refuso vja viene normalizzato solo dopo in/a.
- Date concorrenti senza intervallo, date impossibili e orari invalidi restano da rivedere. Durata standard 60 minuti; intervalli e giorni interi conservano il parser esistente. È un riconoscitore locale di strutture linguistiche: frasi libere ambigue vanno controllate nell'anteprima.

## Grafica
Nove superfici illustrate a 360° rifatte: Takemichi, Deku, All Might, Luffy, Hinata, Naruto, Hello Kitty, Kuromi e My Melody. I primi quattro volti esistenti sono aggiornati, Deku/All Might sono aggiunti, i tre PIDDU sostituiscono i precedenti simboli semplificati. Tratti, capelli, accessori, lati e nuca sono distinti. Asset condivisi da tastiera, catalogo e Maker, con mipmap e cache a budget limitato. Corretta l'orientazione dei particolari asimmetrici.

Ispezionate le 100 varianti precedenti non abbinate ai temi; catalogo ora 102. Palloni e Sharingan approvati sono preservati. Non tutte le 102 illustrazioni sono state ridisegnate: i restanti emblemi sono ancora stilizzati. Le trackball restano sfere con texture, non modelli anatomici tridimensionali con orecchie/capelli sporgenti. Le nuove illustrazioni sono generate per il progetto, non copie degli artwork ufficiali.

## Installazione e continuità
Pacchetto it.keyant.keyboard, versionCode 98, versione 0.6.71; firma di sviluppo KeyAnt già usata nelle release precedenti. Installare sopra la versione precedente senza disinstallare per conservare impostazioni e dati. Sorgenti completi, patch, storico Git, checkpoint, verifica e checksum accompagnano l'APK.
