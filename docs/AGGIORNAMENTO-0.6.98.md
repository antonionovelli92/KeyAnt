# KeyAnt 0.6.98 — ANT, anteprime e revisione del testo

- Aspetto del tema parte chiuso. Aggiunto Angoli arrotondati, collegato alla preferenza esistente, senza migrazione o cambio della scelta salvata. L'accesso dalla ricerca o da ANT apre la sezione pertinente.
- Categoria Scolpiti, anteprima attiva più compatta e categorie con indicatore stabile durante lo scorrimento.
- Le anteprime riutilizzate ricostruiscono il renderer quando cambiano tema, colori o regolazioni, anche senza un ridimensionamento della vista.
- ANT: alone luminoso leggero su compositore e risposte, suggerimenti a schede con rotazione per visita e azioni coerenti con l'ultimo argomento. Nessuna animazione continua aggiunta mentre si scrive.
- Le anteprime rispettano Suono disattivato, Silenzioso e Non disturbare senza notifiche ripetitive.
- Vibrazione: riuso dell'effetto preparato e delle capacità hardware, invalidazione al cambio di profilo/intensità/durata. Conservati feedback di sistema e fallback dei dispositivi.
- Correggi può usare il modello locale già scaricato per rivedere il testo nel suo insieme. Interruttore Revisione contestuale locale in Digitazione, ricercabile e controllabile da ANT. È una revisione esplicita con anteprima, non un'elaborazione AI automatica a ogni pressione. Senza modello o in caso di errore resta il correttore rapido.
- Controlli conservativi prima di accettare il risultato: nomi riconoscibili, termini personali, inglesismi riconosciuti, numeri, negazioni, URL e indirizzi. Protezione di acronimi e maiuscole interne nella correzione automatica, con precedenza alle correzioni esplicitamente apprese.

## Riferimenti e limiti

Il video NuKey fornito mostra revisione contestuale del paragrafo e nuove predizioni. Il [sito ufficiale](https://nukeyapp.com/) distingue adattamento dei tocchi e proofreader su Apple Intelligence. Il motore Apple non è trasferibile ad Android: KeyAnt riusa la propria infrastruttura locale e conserva le preferenze di apprendimento già presenti.

La [sessione del correttore Android](https://developer.android.com/reference/android/service/textservice/SpellCheckerService.Session) può restituire suggerimenti sulla frase, ma la qualità dipende dal servizio installato. Per la vibrazione restano i [controlli delle capacità e i fallback Android](https://developer.android.com/develop/ui/views/haptics/custom-haptic-effects).

I test di instradamento e accettazione non sono una valutazione linguistica del modello Qwen sul telefono. Nessuna dichiarazione di comprensione universale, assenza di errori, FPS misurati o prova fisica Fold/Pixel. I render Android e i controlli automatici non equivalgono a un controllo manuale integrale di ogni pixel.
