# Ripristino mirato 0.6.50

Il bundle `KeyAnt-0.6.50-history.bundle` contiene la baseline recuperata dalla 0.6.49 e la modifica 0.6.50. Non include chiavi di firma. Clonarlo con `git clone KeyAnt-0.6.50-history.bundle KeyAnt`.

Per ritornare ai soli comportamenti precedenti mantenendo temi e materiali nuovi, creare un ramo e ripristinare dalla baseline:

```sh
git switch -c rollback-650-behavior
git restore --source baseline-0.6.49 -- app/src/main/java/helium314/keyboard/keyforma/PhraseMemory.java app/src/main/java/helium314/keyboard/keyforma/ItalianWriting.java app/src/main/java/helium314/keyboard/keyforma/PressMotion.java app/src/main/java/helium314/keyboard/keyforma/KeyAntBar.java
```

Rieseguire i test pertinenti, adeguando le aspettative specifiche della 0.6.50 al comportamento ripristinato. Pubblicare un versionCode maggiore e usare la stessa firma privata. Android non consente normalmente di installare un APK con versionCode inferiore; disinstallare cancellerebbe i dati. Il ripristino consigliato è quindi una nuova build con i soli sorgenti precedenti interessati, senza reset delle preferenze o del database.

Il ciclo delle pillole e la calibrazione non sono stati modificati in 0.6.50.
