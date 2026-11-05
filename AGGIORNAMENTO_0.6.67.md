# KeyAnt 0.6.67 · Frasi, gesti e barra

## Casi del video

Il riconoscimento degli intervalli compone un inizio relativo con una fine su un altro giorno. Esempi: «ricordami di mangiare tra dieci minuti durata fino a domani mattina alle 10» e «… fino al 7 di questo mese alle 11». Restano validi durata 1h, 45 min, mezzora, giorni senza accento, intervalli notturni e giorni interi già supportati.

«Domani» e «dopodomani» fanno riferimento al momento della frase, non al giorno d'inizio dell'evento. «Questo mese» usa mese e anno correnti; «prossimo mese» gestisce anche il cambio d'anno. Date impossibili, fine precedente all'inizio e orari incompleti non vengono trasformati silenziosamente nella durata predefinita. Un'indicazione come «fino a Roma» non è una data. Il parser è locale e composizionale, non un modello linguistico: casi ambigui restano da correggere nell'anteprima.

Il salvataggio conserva l’istante finale esatto, senza perderne i secondi convertendo la durata in minuti interi. Una modifica manuale della durata prevale sulla fine interpretata. La durata predefinita rimane 60 minuti quando non viene specificata. L'anteprima degli intervalli su più giorni mostra anche la fine. Il verde segue la conferma del provider; non certifica l'avvenuta sincronizzazione del server Google. Nessuna modifica a destinazioni, OAuth, permessi o notifiche.

## Pillole

Verde e rosso mantengono margini verticali di 4 dp, con aree di tocco invariate. Superficie con riflesso breve sul bordo superiore, bordo vetro e spunta progressiva. Il riflesso di fondo è contenuto per conservare il contrasto del testo bianco. Entrata e uscita animano la capsula intera, con lieve sollevamento e scala contenuta; testo e icone non si muovono indipendentemente. Gli effetti rispettano le animazioni disattivate nel sistema e la preferenza KeyAnt. Il rosso conserva il comando e consente il tentativo successivo quando previsto; la X mantiene la frase.

## Gesti dei pannelli

In Gesti e strumenti → Pannelli laterali ogni lato ha la propria scelta:

- Tieni premuto e trascina: comportamento precedente, predefinito.
- Swipe immediato: trascina direttamente dal tasto, senza attendere.

Invio apre i numeri verso sinistra; ?123 e ABC aprono il calendario verso destra. Un tocco breve continua a inviare l'azione del tasto. I movimenti verticali o contrari non aprono il pannello. I pulsanti, gli interruttori separati, la modalità Fold affiancata e il gesto inverso restano disponibili. La tastiera e il pannello condividono la stessa posizione di trascinamento e il completamento già introdotto nella 0.6.66.

## Barra delle icone

Aspetto → Barra delle icone → Visualizzazione della barra:

- Classica: impostazione iniziale, senza cambiare ordine o comandi.
- Manopola: comando circolare a sinistra, apertura della pillola degli strumenti con tocco oppure pressione lunga; ultimo strumento usato a destra. Si memorizza soltanto l'identificatore del comando, mai il testo, la query o il contenuto degli appunti. L'anteprima non modifica questa memoria.
- Carosello: icone scorrevoli con margini e sfumatura ai bordi, aree di tocco conservate.
- Solo quando serve: riga inattiva nascosta; torna per suggerimenti, pillole e contenuti esterni. Il ridimensionamento attende il rilascio dei tocchi. La riga viene ripristinata passando a emoji o appunti e nei campi password. Gli strumenti restano richiamabili dalla virgola.

Nessuna nuova funzione esegue un comando senza il tocco dell'utente. Manopola e carosello riutilizzano il dispatcher, i materiali e i permessi della barra esistente.

## Temi e catalogo

Una sola galleria, con tema attivo compatto e pulsante Prova. Preferiti e Usati spesso sono categorie nello stesso selettore delle altre collezioni. Non c'è più una seconda fila di temi recenti sopra il catalogo. Luminosità Sistema/Chiaro/Scuro e RGB coordinato sono raccolti in un riquadro richiudibile sotto la galleria. Il tocco apre ancora la prova; l'applicazione del tema resta esplicita e la pressione lunga gestisce i Preferiti.

Tre nuovi materiali Disegno: China · Android vetro blu, China · Essenziale, China · Verde traslucido. Conservano fianchi, geometria e pressione del China originale; vetro blu e verde sono traslucidi, Essenziale è opaco. Le varianti precedenti, China originale e gli identificatori dei temi restano invariati. I nuovi profili sono disponibili anche come basi Maker; colori, altezze, fianchi, forma e trasparenze continuano a usare gli stessi controlli.

## Digitazione

Una risposta del dizionario riferita a un prefisso precedente, marcata obsoleta o vuota non può alimentare l'autocorrezione o la previsione del tocco della parola corrente. Una correzione valida per la composizione attuale rimane disponibile; i suggerimenti manuali e lo swipe di scrittura conservano il proprio percorso.

Il video non permette di attribuire con certezza le sostituzioni viste a un pollice, a Enter o al dizionario. Questa modifica protegge un caso concreto di risposta tardiva, non dichiara di riprodurre l'algoritmo Apple. Il modello di tocco esistente conserva centri dei tasti invarianti, correzioni limitate ai bordi, attivazione opzionale e dati aggregati locali. Nessun accesso alla cronologia delle chat di altre app.

Fonti pubbliche consultate: [Usability Guided Key-Target Resizing](https://www.microsoft.com/en-us/research/publication/usability-guided-key-target-resizing-for-soft-keyboards/) e [Language modeling for soft keyboards](https://www.microsoft.com/en-us/research/publication/language-modeling-for-soft-keyboards-3/). Non è stato usato codice proprietario o trapelato.

Verifiche effettive, copertura e limiti sono in VERIFICA-0.6.67.md. APK e sorgenti completi vengono pubblicati dopo le verifiche; video personali e credenziali non sono inclusi.
