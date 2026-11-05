# KeyAnt 0.6.62

Tastiera Android personale basata su HeliBoard, con temi, appunti, trackball e azioni locali dalla frase.

## Installazione

Scarica **KeyAnt-0.6.62.apk** dalla [release v0.6.62](https://github.com/antonionovelli92/KeyAnt/releases/tag/v0.6.62). Installa sopra la versione esistente senza disinstallare: firma personale invariata, versionCode 89.

## Novità

- Corretto il difetto ICU che impediva le pillole evento/promemoria e causava l’arresto nelle versioni precedenti. La vecchia espressione fallisce nella nuova verifica nativa; quella corretta passa.
- Cancella nel tastierino elimina senza chiuderlo. Tre dimensioni visive con area di tocco invariata.
- Pannelli con Seta, Cascata, Scorrimento o nessuna animazione; anteprime e trasparenza del tema.
- Spaziatrice split: corretto il taglio asimmetrico della metà più larga prima del rilascio.
- Restano split verticale opt-in, impostazioni per categorie, ricerca con focus, pillole rosse/verdi, materiali coordinati e opacità reversibile.
- Google Tasks/OAuth reale ancora da verificare sul telefono: questa correzione ripristina il riconoscimento, non configura credenziali esterne.

[Configurazione Google Tasks](docs/GOOGLE_TASKS_SETUP.md) · [Novità e limiti](AGGIORNAMENTO_0.6.62.md) · [Verifiche](VERIFICA-0.6.62.md) · [Ripristino](ROLLBACK-0.6.62.md) · [Build e firma](docs/BUILD_AND_RELEASE.md).

## Sorgenti e continuità

Il ramo GitHub contiene la documentazione. Per il progetto Android completo scaricare **KeyAnt-0.6.62-sorgenti-pubblici.zip**, oppure **KeyAnt-0.6.62-history.bundle** per avere anche baseline 0.6.50 e revisioni 0.6.51–0.6.62. Gli archivi automatici “Source code” contengono solo questo ramo documentale.

```sh
git clone KeyAnt-0.6.62-history.bundle KeyAnt
cd KeyAnt
git log --oneline --all --decorate
```

Chiavi personali, credenziali e build temporanee sono escluse. La chiave originale è necessaria per aggiornare l’installazione personale; una build con firma diversa non è compatibile come aggiornamento.

Conservati sorgenti, licenze e attribuzioni della base [HeliBoard](https://github.com/Helium314/HeliBoard). Gli asset che richiamano marchi e opere mantengono i diritti dei rispettivi titolari; la licenza del codice non concede diritti aggiuntivi su tali opere.
