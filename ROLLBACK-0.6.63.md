# Ripristino da KeyAnt 0.6.63

Baseline sorgenti: v0.6.62, commit 1b49fe33d1d15a5c94b8fc9caa7dd59942d6debc. La nuova versione usa versionCode 90 e la firma personale invariata.

Prima di modificare l'installazione esportare le proprie impostazioni. Per isolare una regressione disattivare Pannelli affiancati sul Fold orizzontale, ripristinare Larghezza Attuale e Luci come la tastiera. Queste opzioni non cancellano i valori RGB principali. Il calendario laterale può essere disattivato separatamente.

Il bundle contiene lo storico. Verificare con git bundle verify, clonare in una cartella separata e creare un ramo dal tag v0.6.62. Per distribuire il codice precedente come aggiornamento mantenere la firma originale e assegnare un versionCode maggiore di quello installato. Android normalmente rifiuta un APK con codice inferiore: non disinstallare automaticamente, perché si perderebbero i dati locali. Nessun rollback dell'app annulla eventi o attività già creati sui servizi esterni.

Le modifiche sono concentrate nei pannelli, lettura agenda, anteprime Studio, trasformazione del testo nello split e guida OAuth. La correzione ICU di 0.6.62 rimane presente. Non pubblicare chiavi di firma, token, schermate di account o video personali insieme ai sorgenti.
