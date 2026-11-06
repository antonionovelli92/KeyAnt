# KeyAnt 0.6.69 — appunti privati, gesti e prova dei temi

## Cosa cambia
- La pillola Incolla funziona anche in incognito e nei campi login/password. Mostra una dicitura neutra, senza testo copiato o miniatura. Si incolla solo toccandola. Il nuovo percorso non aggiunge contenuti alla cronologia né attiva correzione/apprendimento. Restano valide le opzioni già esistenti per conservare copie sensibili effettuate esplicitamente nei campi password.
- La pillola si aggiorna anche con cronologia disattivata. Testo copiato e media già importati in una sessione pubblica restano utilizzabili. Android e l'app di destinazione decidono quali immagini/video accettare; i video conservano il percorso di condivisione già esistente. Nessuna scansione automatica di nuovi screenshot privati.
- In Appunti e codici è disponibile «Pillola anche in incognito e nei login», inizialmente attiva.
- In Gesti e selezione, «Gesti da una coppia di tasti» è opzionale e inizialmente spenta. Coppia iniziale Q + P, un dito su ciascun tasto: su mostra le icone, giù le nasconde. Si possono cambiare entrambe le lettere e le quattro direzioni. Solo la coppia scelta sostituisce i gesti generali. Le lettere devono essere diverse. I tocchi continuano a scrivere normalmente.
- Le gesture a due dita misurano il movimento comune dall'arrivo del secondo dito: un precedente movimento del primo non conta. Un terzo dito disarma il riconoscimento. Soglie e azioni generali restano invariate.
- La manopola, il nastro e il ventaglio rispettano la larghezza utile della tastiera e hanno margini laterali e un contenitore interno arrotondato. Le riaperture durante un'animazione ripartono dall'opacità corrente. La barra automatica conserva l'altezza risolta quando viene temporaneamente nascosta, evita richieste di layout senza cambiamenti e aspetta il rilascio delle dita prima di ridimensionarsi.
- Il pallino del tema lo applica immediatamente. La grafica apre la prova: tastiera in basso, campo testo con selezione, maiuscole, simboli e conferma accanto al campo. La pagina sottostante è sfocata sui sistemi che supportano il blur Compose. Chiudere non applica il tema. Pressione lunga e Preferiti, controlli RGB e trasparenza rimangono disponibili.
- Cinque temi PIDDU: China Tutto rosa, Rosa su nero, Nero su rosa, Coppa Petali rosa e Pellicola Quarzo rosa. Due temi aggiuntivi: China Viola e ambra, Lamina Laguna. Tutti hanno barra e sfera coordinate tramite «Segui il tema», preservando eventuali personalizzazioni indipendenti.

## Limiti verificabili
La fluidità effettiva della ricerca One UI va confermata sul telefono: i test locali non riproducono il compositore Samsung. Le variazioni d'altezza richiedono comunque un aggiornamento degli inset Android. Nessuna promessa di eliminazione di tutti i micro scatti del sistema.
Non è stato cambiato il motore del dizionario: scrittura, correzione e previsione sono sottoposte a regressione; questa versione migliora casi concreti di interazione e non dichiara incrementi di accuratezza non misurati.

## Recupero
Aggiornamento con stessa firma e codice 96. Non disinstallare la versione precedente: installare sopra conserva impostazioni e dati. Esportare anche il backup dall'app sul telefono: i sorgenti e l'APK non contengono il tuo storico, le tue parole apprese o le tue preferenze personali.
La release contiene sorgenti e cronologia per ricostruire una versione correttiva. Vedere ROLLBACK-0.6.69.md.
