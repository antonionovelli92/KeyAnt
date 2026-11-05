# Ripristino 0.6.59

Sorgenti precedenti: tag v0.6.58, commit e49f2de1c8efc9a7991685edfdbcd82cf1a80812 nel bundle completo. Conservare la firma personale. Non disinstallare per effettuare un downgrade: si perderebbero i dati dell’app. Per un ripristino installabile ricompilare i sorgenti precedenti con versionCode maggiore di 86 e la stessa chiave.

La modifica di rendering è in SidePanels656.Drawer: layer software isolato e rimozione clipping outline. La guida è in ContextActionSettings651.kt e TasksSetup659.java. Nessuna migrazione dati o modifica automatica di destinazione promemoria/default adattivo.
