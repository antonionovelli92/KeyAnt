# KeyAnt 0.6.58

Tastiera Android personale basata su HeliBoard, con temi, appunti, trackball e azioni locali dalla frase.

## Installazione

Scarica **KeyAnt-0.6.58.apk** dalla [release v0.6.58](https://github.com/antonionovelli92/KeyAnt/releases/tag/v0.6.58). Installa sopra la versione esistente senza disinstallare: firma personale invariata, versionCode 85.

## Novità

- Pagina **Gesti e strumenti → Pannelli laterali**, con interruttori separati e istruzioni accanto a ciascuno.
- **Numeri a destra**: tieni Invio e trascina a sinistra. **Calendario a sinistra**: tieni ?123 e trascina a destra.
- Geometria delle righe e colonne esplicita, prima apparizione ridisegnata, pannelli più compatti e senza cornice da scheda sovrapposta. La tastiera mantiene il movimento complementare al dito.
- **Gesto con linea di collegamento** separato in Gesti e selezione, disattivato inizialmente anche per chi aggiorna. Non disattiva i pannelli laterali.
- Google Tasks distingue l’errore interno **8** dall’errore di configurazione **10**, mantiene l’errore visibile e propone **Riprova collegamento**. Il collegamento reale resta da risolvere/verificare: questa release non lo dichiara funzionante.

[Configurazione Google Tasks e limiti](docs/GOOGLE_TASKS_SETUP.md).

[Novità e limiti](AGGIORNAMENTO_0.6.58.md) · [Verifiche](VERIFICA-0.6.58.md) · [Ripristino](ROLLBACK-0.6.58.md) · [Build e firma](docs/BUILD_AND_RELEASE.md).

## Sorgenti e continuità

Il ramo GitHub contiene la documentazione. Per il progetto Android completo scaricare **KeyAnt-0.6.58-sorgenti-pubblici.zip**, oppure **KeyAnt-0.6.58-history.bundle** per avere anche baseline 0.6.50 e revisioni 0.6.51–0.6.58. Gli archivi automatici “Source code” contengono solo questo ramo documentale.

```sh
git clone KeyAnt-0.6.58-history.bundle KeyAnt
cd KeyAnt
git log --oneline --all --decorate
```

Chiavi personali, credenziali e build temporanee sono escluse. La chiave originale è necessaria per aggiornare l’installazione personale; una build con firma diversa non è compatibile come aggiornamento.

Conservati sorgenti, licenze e attribuzioni della base [HeliBoard](https://github.com/Helium314/HeliBoard). Gli asset che richiamano marchi e opere mantengono i diritti dei rispettivi titolari; la licenza del codice non concede diritti aggiuntivi su tali opere.
