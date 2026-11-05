# KeyAnt 0.6.65

Tastiera Android personale basata su HeliBoard, con temi, appunti, trackball e azioni locali dalla frase.

## Installazione

Scarica **KeyAnt-0.6.65.apk** dalla [release v0.6.65](https://github.com/antonionovelli92/KeyAnt/releases/tag/v0.6.65). Installa sopra la versione esistente senza disinstallare: firma personale invariata, versionCode 92.

## Novità

- Pillola con esito vetro, spunta animata e colori facoltativi del glow.
- Contesto disponibile dopo la X, riconoscimento del testo selezionato e recupero della frase con Ctrl+Z/Annulla.
- Durate in lettere, giorni senza accento, orari di fine e intervalli tutto il giorno su più date.
- Completamento dei luoghi facoltativo e richiesta di sincronizzazione dopo il salvataggio locale.
- Calendario da ABC e ?123, oggi evidenziato, ricerca emoji in pillola, autocorrezione bilingue più prudente.
- Categoria Disegno con quattro varianti scure, selettore categorie, prova del tema prima di applicarlo.

[Configurazione Google Tasks](docs/GOOGLE_TASKS_SETUP.md) · [Novità e limiti](AGGIORNAMENTO_0.6.65.md) · [Verifiche](VERIFICA-0.6.65.md) · [Ripristino](ROLLBACK-0.6.65.md) · [Build e firma](docs/BUILD_AND_RELEASE.md).

## Sorgenti e continuità

Il ramo GitHub contiene la documentazione. Per il progetto Android completo scaricare **KeyAnt-0.6.65-sorgenti-pubblici.zip**, oppure **KeyAnt-0.6.65-history.bundle** per avere anche baseline 0.6.50 e revisioni 0.6.51–0.6.65. Gli archivi automatici “Source code” contengono solo questo ramo documentale.

```sh
git clone KeyAnt-0.6.65-history.bundle KeyAnt
cd KeyAnt
git log --oneline --all --decorate
```

Chiavi personali, credenziali e build temporanee sono escluse. La chiave originale è necessaria per aggiornare l’installazione personale; una build con firma diversa non è compatibile come aggiornamento.

Conservati sorgenti, licenze e attribuzioni della base [HeliBoard](https://github.com/Helium314/HeliBoard). Gli asset che richiamano marchi e opere mantengono i diritti dei rispettivi titolari; la licenza del codice non concede diritti aggiuntivi su tali opere.
