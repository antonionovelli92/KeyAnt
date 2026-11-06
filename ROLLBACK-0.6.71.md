# Ripresa e rollback 0.6.71
Base: sorgenti v0.6.70, commit 8e81613c0b4eb9bde6beee19ca43c3dd7bb0c116.
Lavoro: work/0.6.71-search-paste-events; checkpoint docs/CHECKPOINT-0.6.71.md.
Repository pubblico: ramo work/keyant-0.6.71 (documentazione); sorgenti completi ZIP e storico .bundle negli allegati della release.

Per riprendere: estrarre lo ZIP o clonare il bundle in una cartella nuova; leggere checkpoint e verifica. La chiave privata non è inclusa. Il certificato previsto è bf7bc5998c63e50de960d4506499dce857cea819468673d0ca52d31bed527aa4 (SHA-256).

Per un rollback del codice, creare un ramo dal tag v0.6.70 nel bundle; non sovrascrivere il ramo corrente. Per il telefono, fare prima un backup esportato da KeyAnt. Android può rifiutare un APK con versionCode inferiore; non disinstallare senza backup. Una build di rollback con numero superiore e stessa firma è il percorso che conserva meglio i dati. La release 0.6.70 resta disponibile separatamente.

Limiti da verificare sul dispositivo: accettazione immagini della singola app; gesture/shortcut reali; fluidità su Fold e Pixel. Test automatici e tavole renderizzate non sostituiscono una prova fisica sui telefoni.
