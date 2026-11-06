# KeyAnt 0.6.70

Tastiera Android personale basata su HeliBoard, con temi, appunti, trackball e azioni locali dalla frase.

## Installazione

Scarica **KeyAnt-0.6.70.apk** dalla [release v0.6.70](https://github.com/antonionovelli92/KeyAnt/releases/tag/v0.6.70). Installa sopra la versione esistente senza disinstallare: firma personale invariata, versionCode 97. Non occorre installare le versioni intermedie, anche su un secondo telefono. Account e permessi delle integrazioni restano personali.

## Novità

- Swipe icone → suggerimenti dalla zona selezionabile delle ultime 1/2/3 icone visibili; attivazione immediata o premi e trascina, risposta morbida/bilanciata/rapida.
- Geometria stabile della barra durante ritorno dalla scrittura e ridimensionamento; manopola meccanica, ventaglio rifinito, cassetto e lamelle, anche nel Maker.
- Protezione della selezione durante gesti a due dita incompleti; recupero locale limitato con Ctrl+Z e Ctrl+Y, oltre al supporto nativo dell’editor.
- Email note completabili da un prefisso con punto di due caratteri; peso delle abitudini ridotto gradualmente con il tempo; lessico offline supplementare con tolleranza ai refusi.
- 14 nuove trackball: volti anime con fronte/lati/nuca, PIDDU e piccoli riferimenti a serie e anime; Sharingan rivisto e collegato al caricatore effettivo.
- Incluse le novità 0.6.69: pillola privata mascherata, coppia di tasti per mostrare/nascondere la barra, selezione rapida del tema, prova interattiva e temi PIDDU coordinati.

[Novità e limiti](AGGIORNAMENTO-0.6.70.md) · [Verifiche](VERIFICA-0.6.70.md) · [Ripristino](ROLLBACK-0.6.70.md) · [Build e firma](docs/BUILD_AND_RELEASE.md) · [Configurazione Google Tasks](docs/GOOGLE_TASKS_SETUP.md).

## Sorgenti e continuità

Il ramo GitHub contiene la documentazione. Per il progetto Android completo scaricare **KeyAnt-0.6.70-sorgenti-pubblici.zip**, oppure **KeyAnt-0.6.70-history.bundle** per avere anche baseline 0.6.50 e revisioni 0.6.51–0.6.70. Gli archivi automatici “Source code” contengono solo questo ramo documentale.

```sh
git clone KeyAnt-0.6.70-history.bundle KeyAnt
cd KeyAnt
git log --oneline --all --decorate
```

Chiavi personali, credenziali e build temporanee sono escluse. La chiave originale è necessaria per aggiornare l’installazione personale; una build con firma diversa non è compatibile come aggiornamento.

Conservati sorgenti, licenze e attribuzioni della base [HeliBoard](https://github.com/Helium314/HeliBoard). Gli asset che richiamano marchi e opere mantengono i diritti dei rispettivi titolari; la licenza del codice non concede diritti aggiuntivi su tali opere.
