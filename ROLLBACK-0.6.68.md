# Ripristino KeyAnt 0.6.68

Base sorgente: tag v0.6.67, commit 51f0ef36ce017c3ec4ba82ca76095c080cd088eb. La 0.6.67 usa versione 94; la 0.6.68 usa versione 95 e lo stesso certificato personale.

Per tornare a un comportamento precedente senza reinstallare: impostare Gesto del calendario su Tieni premuto e trascina, Visualizzazione della barra su Classica, disattivare Calendario affiancato sul Fold orizzontale. Le due opzioni di swipe della barra sono attive come in precedenza. Preferenze, trasparenze, comandi, temi originali e memoria di digitazione non vengono migrati né cancellati.

Per un ripristino del codice, lavorare su un ramo separato dal tag v0.6.67 del bundle sorgente completo. Il ramo principale su GitHub contiene documentazione, non l'intero progetto Android. Compilare una release di recupero con versionCode superiore a 95 e la firma personale invariata: Android normalmente non accetta l'installazione di una versione inferiore sopra quella corrente. Non disinstallare l'app per aggirare questo controllo: si perderebbero i dati locali. Conservare il backup esportato dalle impostazioni prima di prove invasive.

La chiave di firma non è contenuta negli archivi pubblici. Consultare docs/BUILD_AND_RELEASE.md per il gate e la firma.
