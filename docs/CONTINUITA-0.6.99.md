# Continuità KeyAnt 0.6.99

VersionCode **126**. Commit locale completo `cbe712ad44035b001415f322d48a9ae17be7e6a1`, tree `2a782172083800768d236974e83bb9cdb9efe958`.

Il ramo GitHub resta documentale. Ricostruire con `KeyAnt-0.6.97-sorgenti.zip` della release v0.6.97 (SHA256 b8c9ddcb844141a836dd0ba873380a198fa4bb914430ac384868139b0623c57c), poi `patches/KeyAnt-0.6.98-da-0.6.97.patch` e `patches/KeyAnt-0.6.99-da-0.6.98.patch`. L’export ricostruito 0.6.98 ha tree `65936ced1585844a50d962ab39e071a48426db03`; non viene confuso con il commit dell’ambiente precedente. Applicazione della nuova patch verificata su indice pulito: tree finale identico a quello qui indicato.

Leggere AGGIORNAMENTO-0.6.99.md, BUILD_AND_RELEASE-0.6.99.md, VERIFICHE-0.6.99.txt, TEST-0.6.99.json e AUDIT-TEMI-0.6.99.tsv. La chiave di firma è esterna al repository. APK firmata e audit sono distribuiti come allegati diretti in chat; **nessuna release binaria GitHub v0.6.99 pubblicata**. Non inventare URL releases/download/v0.6.99.

Percorsi nuovi: NumericJolly699/Settings, DimensionLayers699, BottomLayout699/BottomOrder699, ToolMenuSurface699/Settings, AntControls699, VoiceRepairs699. Le impostazioni dimensionali hanno suffisso _layer_letters/symbols/symbols2/numeric dopo il profilo schermo/orientamento/trackball. I profili senza suffisso restano comuni; una modifica comune applica quel parametro a tutti i livelli. Reset predefiniti conserva il dimensionamento automatico per tema. Snapshot personale separato dal ripristino della sessione.

Il jolly è il tasto spazio vuoto nel layout NUMBER/NUMPAD, distinto dalla scorciatoia del pannello laterale. I listener annullano i tap in attesa al cambio campo, annullamento del gesto e cambio tastiera. Non ripristinare il touchpad o lo swipe della spaziatrice testuale su questo tasto.

Palette personale: ka_key_color_enabled conservato per tema, default compatibile con palette già presenti. Pannello strumenti: ka_tools_surface stock/follow/custom; ka_tools_theme. L’opzione di ripensamenti numerici è disattivata inizialmente e opera soltanto nella pulizia con anteprima, preservando l’originale.

Per tornare indietro senza perdere le impostazioni personali, prima usare Annulla le modifiche o Riprendi assetto. Un downgrade APK diretto non è garantito da Android: per un rollback del codice ricompilare la base con versionCode maggiore, conservando firma e dati.
