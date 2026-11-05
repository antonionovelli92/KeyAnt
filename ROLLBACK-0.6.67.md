# Ripristino 0.6.67

Base v0.6.66: c394c14809e41261e55d84c95b46834a19a96231. Ramo maintenance/0.6.67-gestures-context-toolbar; tag sorgente v0.6.67 nel bundle completo.

Per tornare all'interazione precedente: Visualizzazione della barra → Classica; entrambi i gesti → Tieni premuto e trascina. Sono già i valori iniziali. Nessuna migrazione distruttiva delle preferenze, nessuna cancellazione dei temi o dell'ordine degli strumenti.

Per ripristinare codice usare il bundle e compilare una nuova build con la stessa firma e versionCode superiore a 94. Non disinstallare per forzare un downgrade, perché si perderebbero dati locali. Conservare le correzioni del crash dei temi traslucidi della 0.6.66 e della regex Android della 0.6.62.

Il rollback non annulla eventi già salvati; Ctrl+Z ripristina il testo consumato, non cancella un evento. Archivi pubblici privi di credenziali, dati personali e chiavi di firma.
