# Ripristino KeyAnt 0.6.52

## Prima opzione: disattivare solo la funzione

Gesti e strumenti → Azioni dalla frase → Azioni contestuali: disattivare. Il riconoscimento si ferma e resta la normale freccia strumenti. Memoria, temi, appunti e calibrazione non vengono azzerati.

## Sorgenti e storico

L’allegato `KeyAnt-0.6.52-history.bundle` contiene la baseline 0.6.50, il lavoro recuperato 0.6.51 e la revisione 0.6.52. Verificare SHA256SUMS e poi:

```sh
git clone KeyAnt-0.6.52-history.bundle KeyAnt
cd KeyAnt
git log --oneline --all --decorate
git switch -c ripristino baseline-0.6.50
```

Per confrontare solo questa revisione: `git diff v0.6.51 v0.6.52`. Non spostare i tag pubblicati.

La 0.6.52 modifica le transizioni nella barra, il contenitore della conferma, la disattivazione del riconoscimento, la versione e i relativi test/documenti. Non modifica soglie, hitbox, calibratore, correttore, suggerimenti personali o materiali della 0.6.51.

Per distribuire un ripristino su Android, ricompilare con la chiave originale e un versionCode maggiore di quello installato. Un vecchio APK può essere rifiutato come downgrade. Non disinstallare per aggirare il controllo: si rischia di perdere i dati locali. La chiave personale non è negli allegati pubblici.

Se si usa lo ZIP, scaricare `KeyAnt-0.6.52-sorgenti-pubblici.zip`: gli archivi automatici Source code di GitHub contengono il ramo documentale, non l’intero progetto Android.
