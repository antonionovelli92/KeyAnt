# KeyAnt 0.6.69

Tastiera Android personale basata su HeliBoard, con temi, appunti, trackball e azioni locali dalla frase.

## Installazione

Scarica **KeyAnt-0.6.69.apk** dalla [release v0.6.69](https://github.com/antonionovelli92/KeyAnt/releases/tag/v0.6.69). Installa sopra la versione esistente senza disinstallare: firma personale invariata, versionCode 96. Non occorre installare le versioni intermedie, anche su un secondo telefono. Account e permessi delle integrazioni restano personali.

## Novità

- Pillola Incolla disponibile in incognito e nei login, con testo nascosto e opzione dedicata.
- Coppia di tasti configurabile: Q + P inizialmente, swipe su/giù per mostrare/nascondere la barra. Funzione opzionale, spenta inizialmente.
- Migliore riconoscimento del movimento comune a due dita; nessun cambiamento alle soglie e alle azioni generali.
- Manopola e varianti contenute entro la larghezza della tastiera, con margini e contorno arrotondato.
- Pallino per applicare subito un tema; grafica per provarlo nella tastiera in basso, con testo selezionabile e conferma. Preferiti invariati.
- Cinque nuovi temi rosa PIDDU e due materiali aggiuntivi, coordinati con barra e trackball.

[Novità e limiti](AGGIORNAMENTO-0.6.69.md) · [Verifiche](VERIFICA-0.6.69.md) · [Ripristino](ROLLBACK-0.6.69.md) · [Build e firma](docs/BUILD_AND_RELEASE.md) · [Configurazione Google Tasks](docs/GOOGLE_TASKS_SETUP.md).

## Sorgenti e continuità

Il ramo GitHub contiene la documentazione. Per il progetto Android completo scaricare **KeyAnt-0.6.69-sorgenti-pubblici.zip**, oppure **KeyAnt-0.6.69-history.bundle** per avere anche baseline 0.6.50 e revisioni 0.6.51–0.6.69. Gli archivi automatici “Source code” contengono solo questo ramo documentale.

```sh
git clone KeyAnt-0.6.69-history.bundle KeyAnt
cd KeyAnt
git log --oneline --all --decorate
```

Chiavi personali, credenziali e build temporanee sono escluse. La chiave originale è necessaria per aggiornare l’installazione personale; una build con firma diversa non è compatibile come aggiornamento.

Conservati sorgenti, licenze e attribuzioni della base [HeliBoard](https://github.com/Helium314/HeliBoard). Gli asset che richiamano marchi e opere mantengono i diritti dei rispettivi titolari; la licenza del codice non concede diritti aggiuntivi su tali opere.
