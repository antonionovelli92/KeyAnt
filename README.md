# KeyAnt 0.6.59

Tastiera Android personale basata su HeliBoard, con temi, appunti, trackball e azioni locali dalla frase.

## Installazione

**0.6.59 è pronta e verificata, ma la release è ancora una bozza non pubblicata.** APK e 10 allegati sono caricati; pubblicazione in attesa di autorizzazione esplicita. L’ultima release pubblica resta [v0.6.58](https://github.com/antonionovelli92/KeyAnt/releases/tag/v0.6.58). La 0.6.59 si installa sopra la versione esistente senza disinstallare: firma personale invariata, versionCode 86.

## Novità

- Rendering del solo pannello laterale isolato in un layer software: mitigazione del difetto “digita ma non si vede”, con traslazioni animate conservate. Da confermare sul Fold fisico.
- Numeri e calendario restano attivabili separatamente in **Gesti e strumenti → Pannelli laterali**. La gesture della linea rimane spenta di default.
- **Come collegare Google Tasks** nelle azioni dalla frase: spiegazione semplice di OAuth e copia dei dati pubblici dell’app installata. Il collegamento reale Google Tasks resta irrisolto; nessuna registrazione Cloud completata in questa sessione.
- [Studio sulla precisione della digitazione Apple e KeyAnt](docs/DIGITAZIONE_APPLE_E_KEYANT.md), con fonti e limiti verificati del decoder attuale.

[Configurazione Google Tasks](docs/GOOGLE_TASKS_SETUP.md) · [Novità e limiti](AGGIORNAMENTO_0.6.59.md) · [Verifiche](VERIFICA-0.6.59.md) · [Ripristino](ROLLBACK-0.6.59.md) · [Build e firma](docs/BUILD_AND_RELEASE.md).

## Sorgenti e continuità

Il ramo GitHub contiene la documentazione. Per il progetto Android completo scaricare **KeyAnt-0.6.59-sorgenti-pubblici.zip**, oppure **KeyAnt-0.6.59-history.bundle** per avere anche baseline 0.6.50 e revisioni 0.6.51–0.6.59. Gli archivi automatici “Source code” contengono solo questo ramo documentale.

```sh
git clone KeyAnt-0.6.59-history.bundle KeyAnt
cd KeyAnt
git log --oneline --all --decorate
```

Chiavi personali, credenziali e build temporanee sono escluse. La chiave originale è necessaria per aggiornare l’installazione personale; una build con firma diversa non è compatibile come aggiornamento.

Conservati sorgenti, licenze e attribuzioni della base [HeliBoard](https://github.com/Helium314/HeliBoard). Gli asset che richiamano marchi e opere mantengono i diritti dei rispettivi titolari; la licenza del codice non concede diritti aggiuntivi su tali opere.
