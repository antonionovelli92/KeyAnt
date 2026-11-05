# KeyAnt 0.6.66

Tastiera Android personale basata su HeliBoard, con temi, appunti, trackball e azioni locali dalla frase.

## Installazione

Scarica **KeyAnt-0.6.66.apk** dalla [release v0.6.66](https://github.com/antonionovelli92/KeyAnt/releases/tag/v0.6.66). Installa sopra la versione esistente senza disinstallare: firma personale invariata, versionCode 93. Non occorre installare le versioni intermedie, anche su un secondo telefono. Account e permessi delle integrazioni restano personali.

## Novità

- Corretto il crash della barra icone con i materiali Disegno traslucidi e il contrasto delle pillole chiare.
- X nelle ricerche emoji/GIF torna alla tastiera; freccia alla selezione emoji.
- Pannelli con completamento del gesto più morbido, trackball sincronizzata e oggi visibile sul calendario.
- Comandi Calendario e Tastierino nei tre puntini; impostazioni dei pannelli complete e ricerca senza duplicati dei controlli condivisi.
- China Rosso fedele all’originale e tre materiali vetro/fumé con la stessa geometria.
- Analisi della lingua recente con lavoro limitato, senza cambiare la privacy o leggere la cronologia delle chat.

[Configurazione Google Tasks](docs/GOOGLE_TASKS_SETUP.md) · [Novità e limiti](AGGIORNAMENTO_0.6.66.md) · [Verifiche](VERIFICA-0.6.66.md) · [Ripristino](ROLLBACK-0.6.66.md) · [Build e firma](docs/BUILD_AND_RELEASE.md).

## Sorgenti e continuità

Il ramo GitHub contiene la documentazione. Per il progetto Android completo scaricare **KeyAnt-0.6.66-sorgenti-pubblici.zip**, oppure **KeyAnt-0.6.66-history.bundle** per avere anche baseline 0.6.50 e revisioni 0.6.51–0.6.66. Gli archivi automatici “Source code” contengono solo questo ramo documentale.

```sh
git clone KeyAnt-0.6.66-history.bundle KeyAnt
cd KeyAnt
git log --oneline --all --decorate
```

Chiavi personali, credenziali e build temporanee sono escluse. La chiave originale è necessaria per aggiornare l’installazione personale; una build con firma diversa non è compatibile come aggiornamento.

Conservati sorgenti, licenze e attribuzioni della base [HeliBoard](https://github.com/Helium314/HeliBoard). Gli asset che richiamano marchi e opere mantengono i diritti dei rispettivi titolari; la licenza del codice non concede diritti aggiuntivi su tali opere.
