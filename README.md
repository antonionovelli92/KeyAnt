# KeyAnt 0.6.55

Tastiera Android personale basata su HeliBoard, con temi, appunti, trackball e azioni locali dalla frase.

## Installazione

Scarica **KeyAnt-0.6.55.apk** dalla [release v0.6.55](https://github.com/antonionovelli92/KeyAnt/releases/tag/v0.6.55). Installa sopra la versione esistente senza disinstallare: firma personale invariata, versionCode 82.

## Novità

- Pillola interattiva coerente con le capsule esistenti, controlli interni e ripristino della barra dopo chiusura/errore.
- Date italiane estese: «5 novembre alle 9» e giorni della settimana con ora esplicita.
- Promemoria nel calendario con avviso, selezionabile nelle impostazioni o nei dettagli Tasks.
- Azioni dalla frase attive di default e disattivabili in Gesti e strumenti: promemoria, calendario e telefono.
- Glow pulsante sul contorno dell’icona, colore del tema e riduzione movimento rispettata.
- Dodici temi Materie d’autore, compressione, riflessi mobili, luce laterale, ritorno elastico e glitch locale.
- Memoria personale, calibrazione e gesti della barra conservati.

Calendario con scheda interna alla tastiera. Integrazione Google Tasks implementata, con **configurazione OAuth ancora da completare**: [guida](docs/GOOGLE_TASKS_SETUP.md). Nessuna azione parte automaticamente. L’API Tasks non imposta l’ora di notifica.

[Novità e limiti](AGGIORNAMENTO_0.6.55.md) · [Verifiche](VERIFICA-0.6.55.md) · [Ripristino](ROLLBACK-0.6.55.md) · [Build e firma](docs/BUILD_AND_RELEASE.md).

## Sorgenti e continuità

Il ramo GitHub contiene la documentazione. Per il progetto Android completo scaricare **KeyAnt-0.6.55-sorgenti-pubblici.zip**, oppure **KeyAnt-0.6.55-history.bundle** per avere anche baseline 0.6.50 e revisioni 0.6.51–0.6.55. Gli archivi automatici “Source code” contengono solo questo ramo documentale.

```sh
git clone KeyAnt-0.6.55-history.bundle KeyAnt
cd KeyAnt
git log --oneline --all --decorate
```

Chiavi personali, credenziali e build temporanee sono escluse. La chiave originale è necessaria per aggiornare l’installazione personale; una build con firma diversa non è compatibile come aggiornamento.

Conservati sorgenti, licenze e attribuzioni della base [HeliBoard](https://github.com/Helium314/HeliBoard). Gli asset che richiamano marchi e opere mantengono i diritti dei rispettivi titolari; la licenza del codice non concede diritti aggiuntivi su tali opere.
