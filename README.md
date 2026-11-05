# KeyAnt 0.6.63

Tastiera Android personale basata su HeliBoard, con temi, appunti, trackball e azioni locali dalla frase.

## Installazione

Scarica **KeyAnt-0.6.63.apk** dalla [release v0.6.63](https://github.com/antonionovelli92/KeyAnt/releases/tag/v0.6.63). Installa sopra la versione esistente senza disinstallare: firma personale invariata, versionCode 90.

## Novità

- Pannelli affiancati, opt-in, su Fold aperto orizzontale con tastiera unita e spazio sufficiente: lettere e numeri oppure calendario restano utilizzabili insieme. Swipe contrario per chiudere; split e cambio formato ripristinano la geometria.
- Calendario laterale con mese e agenda del giorno, aggiornamento delle modifiche del provider e sola lettura degli appuntamenti già sincronizzati sul telefono.
- Tastierino realmente più stretto opzionale, luci RGB indipendenti o ereditate, Invio/Spazio/Cancella senza chiusura.
- Studio adattivo: anteprima proporzionata, categorie affiancate su Fold e icone specifiche. Anteprima interattiva del tastierino.
- Glifi dello split senza deformazione orizzontale al rilascio. Restano la correzione ICU, split verticale opt-in, pillole e trasparenze precedenti.
- Tasks: link diretto alla lista tester per il blocco 403 osservato. Account reale non ancora autorizzato/verificato; nessuna fatturazione attivata.

[Configurazione Google Tasks](docs/GOOGLE_TASKS_SETUP.md) · [Novità e limiti](AGGIORNAMENTO_0.6.63.md) · [Verifiche](VERIFICA-0.6.63.md) · [Ripristino](ROLLBACK-0.6.63.md) · [Build e firma](docs/BUILD_AND_RELEASE.md).

## Sorgenti e continuità

Il ramo GitHub contiene la documentazione. Per il progetto Android completo scaricare **KeyAnt-0.6.63-sorgenti-pubblici.zip**, oppure **KeyAnt-0.6.63-history.bundle** per avere anche baseline 0.6.50 e revisioni 0.6.51–0.6.63. Gli archivi automatici “Source code” contengono solo questo ramo documentale.

```sh
git clone KeyAnt-0.6.63-history.bundle KeyAnt
cd KeyAnt
git log --oneline --all --decorate
```

Chiavi personali, credenziali e build temporanee sono escluse. La chiave originale è necessaria per aggiornare l’installazione personale; una build con firma diversa non è compatibile come aggiornamento.

Conservati sorgenti, licenze e attribuzioni della base [HeliBoard](https://github.com/Helium314/HeliBoard). Gli asset che richiamano marchi e opere mantengono i diritti dei rispettivi titolari; la licenza del codice non concede diritti aggiuntivi su tali opere.
