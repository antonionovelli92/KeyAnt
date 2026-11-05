# KeyAnt 0.6.61

Tastiera Android personale basata su HeliBoard, con temi, appunti, trackball e azioni locali dalla frase.

## Installazione

Scarica **KeyAnt-0.6.61.apk** dalla [release v0.6.61](https://github.com/antonionovelli92/KeyAnt/releases/tag/v0.6.61). Installa sopra la versione esistente senza disinstallare: firma personale invariata, versionCode 88.

## Novità

- Tastierino senza titolo: numeri fino in alto, Cancella / Spazio / A capo nell’ultima riga e scorciatoia personalizzabile.
- Spaziatrice: entrambe le metà partecipano alla preview di apertura. Split con due dita anche sul telefono verticale, tramite opzione separata spenta di default.
- Errori nella pillola in rosso, testo conservato e protezione dai doppi invii. Verde solo dopo conferma reale.
- Recupero degli errori nel flusso contestuale e diagnostica locale ridotta. **Il crash mostrato sul Fold non è riprodotto e la causa resta da accertare.**
- Impostazioni per macro categorie, accenti cromatici chiaro/scuro e ricerca con focus e richiesta tastiera all’apertura.
- Restano materiali coordinati, modalità solo icone, opacità reversibile e promemoria locali. Google Tasks/OAuth reale ancora irrisolto.

[Configurazione Google Tasks](docs/GOOGLE_TASKS_SETUP.md) · [Novità e limiti](AGGIORNAMENTO_0.6.61.md) · [Verifiche](VERIFICA-0.6.61.md) · [Ripristino](ROLLBACK-0.6.61.md) · [Build e firma](docs/BUILD_AND_RELEASE.md).

## Sorgenti e continuità

Il ramo GitHub contiene la documentazione. Per il progetto Android completo scaricare **KeyAnt-0.6.61-sorgenti-pubblici.zip**, oppure **KeyAnt-0.6.61-history.bundle** per avere anche baseline 0.6.50 e revisioni 0.6.51–0.6.61. Gli archivi automatici “Source code” contengono solo questo ramo documentale.

```sh
git clone KeyAnt-0.6.61-history.bundle KeyAnt
cd KeyAnt
git log --oneline --all --decorate
```

Chiavi personali, credenziali e build temporanee sono escluse. La chiave originale è necessaria per aggiornare l’installazione personale; una build con firma diversa non è compatibile come aggiornamento.

Conservati sorgenti, licenze e attribuzioni della base [HeliBoard](https://github.com/Helium314/HeliBoard). Gli asset che richiamano marchi e opere mantengono i diritti dei rispettivi titolari; la licenza del codice non concede diritti aggiuntivi su tali opere.
