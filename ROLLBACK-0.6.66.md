# Ripristino 0.6.66

Base v0.6.65: commit 4ef2ed6dcb8586cc1fababa64733275a04f21790. Ramo di manutenzione maintenance/0.6.66-panels-navigation; tag sorgente v0.6.66 nel bundle completo.

Le preferenze dei pannelli e i quattro identificatori Disegno rimangono compatibili. I nuovi comandi vengono aggiunti alla disponibilità degli strumenti senza cancellare l’ordine personale o fissarli automaticamente alla barra. Le migrazioni precedenti vengono applicate anche saltando versioni intermedie.

Per ripristinare codice usare il bundle e produrre una nuova build con firma personale invariata e versionCode superiore a 93; non disinstallare per forzare un downgrade, perché si perderebbero i dati locali. Non reinserire il calcolo di contrasto su colori traslucidi della 0.6.65.

Il rollback non annulla eventi già salvati. Ctrl+Z ripristina soltanto il testo consumato dall’azione, non il salvataggio nel calendario. Credenziali OAuth e chiave di firma sono escluse dagli archivi pubblici.
