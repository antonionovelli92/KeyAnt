# KeyAnt 0.6.53 — Materiali, glow e calendario diretto

Revisione della 0.6.52, versionCode 80. Le preferenze esistenti, i dati e la firma di aggiornamento sono conservati.

## Materiali e pressione

La categoria **Materie d’autore** passa da 6 a 12 temi. Le sei aggiunte sono Denim · Cuciture, Ossidiana · Venature oro, Candy · Menta rossa, Nixie · Tubo ambrato, Studio · Strumento analogico e Lettera · Macchina da scrivere. Sono disponibili anche come basi Maker.

| Materiale | Superficie e risposta |
| --- | --- |
| Denim | Trama intrecciata e cuciture; imbottitura che si comprime e ritorno più lento |
| Ossidiana | Venature minerali, corsa corta e rigida |
| Candy | Spirali, riflesso lucido mobile e lieve compressione elastica |
| Nixie | Reticolo, elettrodi, lettere ambrate luminose e illuminazione alla pressione |
| Strumento analogico | Tasti avorio/ambra, bordi incavati e indicatore sulla barra spaziatrice |
| Macchina da scrivere | Cappucci più piccoli, base profonda, caratteri serif e corsa più lunga |
| Terminal | Scanline e breve distorsione locale durante pressione/rilascio; nessun lampeggio di tutta la tastiera |
| Resina marina | Superficie lucida, movimento della schiuma e riflesso alla pressione |
| Opale | Riflesso iridescente che si sposta durante la pressione |
| Arcade | Corsa profonda e riflessi limitati alla superficie arrotondata |
| Letterpress / Rame | Carta impressa / superficie spazzolata, con corsa e tempi coerenti |

La geometria dei tasti visibili cambia; le aree di tocco e l’invio dei caratteri restano indipendenti dall’animazione. I tempi variano da 24–42 ms in pressione e 105–190 ms nel ritorno. Riduzione movimento Android rispettata. Nessun file o texture viene caricato dalla rete durante la digitazione.

## Icona contestuale

L’icona promemoria/calendario/telefono emette un alone lungo i propri tratti. Non viene aggiunto un pallino o un badge. Il colore segue l’accento del tema, comprese le personalizzazioni Maker. Una pulsazione morbida modula la luminosità; la transizione tra freccia e icona resta interrompibile.

Le maschere del glow vengono preparate al cambio di dimensione. Durante la pulsazione si aggiorna solo l’opacità. L’animatore si arresta alla chiusura, quando la proposta sparisce e al distacco della vista. Con movimento ridotto l’alone resta statico.

**Azioni contestuali** resta attivo di default e disattivabile in **Gesti e strumenti → Azioni dalla frase**. La scelta già salvata viene rispettata; password, incognito e campi esclusi mantengono i controlli precedenti.

## Calendario

L’evento ora può essere salvato direttamente da KeyAnt: tocco sull’icona, revisione di titolo/data/ora, calendario di destinazione, durata, luogo facoltativo e avviso 10 minuti prima (se supportato dal calendario). Le date riconosciute vengono separate dal titolo modificabile. Senza una data e ora riconoscibili occorre sceglierle.

Al primo utilizzo del salvataggio diretto Android chiede READ_CALENDAR e WRITE_CALENDAR. Nessun permesso viene chiesto mentre si digita. Dopo il consenso vengono mostrati soltanto calendari visibili e scrivibili. Il salvataggio richiede **Salva evento** e torna alla tastiera senza aprire l’editor esterno. La sincronizzazione con Google o altri account resta affidata al calendario del dispositivo.

È possibile disattivare **Salva eventi da KeyAnt** oppure scegliere **Apri app** per continuare col precedente editor esterno senza concedere i permessi.

Le operazioni del provider avvengono fuori dal thread UI. Evento e avviso usano un’unica operazione batch. Un salvataggio in corso viene mantenuto durante la rotazione e non può essere duplicato dal doppio tocco. Se l’esito è incerto, l’app invita a controllare il calendario e non riprova automaticamente.

## Google Tasks: limite reale

**Copia e apri Tasks rimane il comportamento disponibile in questa versione.** Non è stata aggiunta una falsa conferma “attività creata”. Per creare davvero un’attività occorrono progetto Google Cloud, client OAuth Android associato a package/firma e consenso all’ambito Tasks. L’API Tasks salva il giorno, ma non consente di leggere o scrivere l’ora pianificata: non garantirebbe da sola un promemoria alle 18:30.

Dettagli e passaggi ancora necessari in [RICERCA-0.6.53.md](RICERCA-0.6.53.md). Nessuna credenziale è inclusa e nessun accesso a un account Google è stato concesso da questa revisione.

## Verifica e recupero

Vedere [VERIFICA-0.6.53.md](VERIFICA-0.6.53.md) e [ROLLBACK-0.6.53.md](ROLLBACK-0.6.53.md). I render Android allegati mostrano materiali, pressioni, glow e dialogo; non sono misure di frame time su un telefono reale.
