# KeyAnt · preparazione 0.6.52

Tastiera Android personale basata su HeliBoard, con temi, appunti, trackball e azioni locali dalla frase.

## Installazione

**KeyAnt-0.6.52.apk è compilato e verificato**, con firma personale invariata e versionCode 79. Si installa sopra la versione esistente senza disinstallare. La pubblicazione degli allegati 0.6.52 è in attesa di autorizzazione; le [release già pubblicate](https://github.com/antonionovelli92/KeyAnt/releases) restano disponibili.

## Novità

- Azioni dalla frase attive di default e disattivabili in Gesti e strumenti: promemoria, calendario e telefono.
- Passaggio graduale fra freccia e azioni, apertura/chiusura della conferma e supporto alla riduzione del movimento.
- Sei temi Materie d’autore e materiali Maker recuperati dal lavoro 0.6.51.
- Memoria personale, calibrazione e gesti della barra conservati.

Google Tasks usa **Copia e apri Tasks**; Calendar apre una bozza da verificare e salvare. Nessuna azione parte automaticamente.

[Novità e limiti](AGGIORNAMENTO_0.6.52.md) · [Verifiche](VERIFICA-0.6.52.md) · [Ripristino](ROLLBACK-0.6.52.md) · [Build e firma](docs/BUILD_AND_RELEASE.md).

## Sorgenti e continuità

Il ramo GitHub contiene la documentazione. Sono preparati **KeyAnt-0.6.52-sorgenti-pubblici.zip** e **KeyAnt-0.6.52-history.bundle** (baseline 0.6.50, revisione 0.6.51 e 0.6.52), da allegare alla release dopo autorizzazione. Gli archivi automatici “Source code” contengono solo questo ramo documentale.

```sh
git clone KeyAnt-0.6.52-history.bundle KeyAnt
cd KeyAnt
git log --oneline --all --decorate
```

Chiavi personali, credenziali e build temporanee sono escluse. La chiave originale è necessaria per aggiornare l’installazione personale; una build con firma diversa non è compatibile come aggiornamento.

Conservati sorgenti, licenze e attribuzioni della base [HeliBoard](https://github.com/Helium314/HeliBoard). Gli asset che richiamano marchi e opere mantengono i diritti dei rispettivi titolari; la licenza del codice non concede diritti aggiuntivi su tali opere.
