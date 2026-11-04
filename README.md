# KeyAnt 0.6.52

Tastiera Android personale basata su HeliBoard, con temi, appunti, trackball e azioni locali dalla frase.

## Installazione

Scarica **KeyAnt-0.6.52.apk** dalla [release v0.6.52](https://github.com/antonionovelli92/KeyAnt/releases/tag/v0.6.52). Installa sopra la versione esistente senza disinstallare: firma personale invariata, versionCode 79.

## Novità

- Azioni dalla frase attive di default e disattivabili in Gesti e strumenti: promemoria, calendario e telefono.
- Passaggio graduale fra freccia e azioni, apertura/chiusura della conferma e supporto alla riduzione del movimento.
- Sei temi Materie d’autore e materiali Maker recuperati dal lavoro 0.6.51.
- Memoria personale, calibrazione e gesti della barra conservati.

Google Tasks usa **Copia e apri Tasks**; Calendar apre una bozza da verificare e salvare. Nessuna azione parte automaticamente.

[Novità e limiti](AGGIORNAMENTO_0.6.52.md) · [Verifiche](VERIFICA-0.6.52.md) · [Ripristino](ROLLBACK-0.6.52.md) · [Build e firma](docs/BUILD_AND_RELEASE.md).

## Sorgenti e continuità

Il ramo GitHub contiene la documentazione. Per il progetto Android completo scaricare **KeyAnt-0.6.52-sorgenti-pubblici.zip**, oppure **KeyAnt-0.6.52-history.bundle** per avere anche baseline 0.6.50 e revisione 0.6.51. Gli archivi automatici “Source code” contengono solo questo ramo documentale.

```sh
git clone KeyAnt-0.6.52-history.bundle KeyAnt
cd KeyAnt
git log --oneline --all --decorate
```

Chiavi personali, credenziali e build temporanee sono escluse. La chiave originale è necessaria per aggiornare l’installazione personale; una build con firma diversa non è compatibile come aggiornamento.

Conservati sorgenti, licenze e attribuzioni della base [HeliBoard](https://github.com/Helium314/HeliBoard). Gli asset che richiamano marchi e opere mantengono i diritti dei rispettivi titolari; la licenza del codice non concede diritti aggiuntivi su tali opere.
