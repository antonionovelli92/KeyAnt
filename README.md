# KeyAnt 0.6.60

Tastiera Android personale basata su HeliBoard, con temi, appunti, trackball e azioni locali dalla frase.

## Installazione

Scarica **KeyAnt-0.6.60.apk** dalla [release v0.6.60](https://github.com/antonionovelli92/KeyAnt/releases/tag/v0.6.60). Installa sopra la versione esistente senza disinstallare: firma personale invariata, versionCode 87.

## Novità

- 20 barre e sfere abbinate ai nuovi materiali; opzione per conservare solo le icone tematizzate.
- Rendi tutto opaco: interruttore reversibile, spento di default, senza perdere le trasparenze salvate.

- Pillola verde pieno con spunta solo dopo salvataggio confermato, ritiro animato e protezione delle nuove frasi.
- Pannelli laterali con un unico passaggio di disegno e scocca condivisa del tema, senza il secondo fondo opaco. Conferma sul Fold fisico ancora necessaria.
- Calendario laterale spento all’aggiornamento, numeri indipendenti; menu della pressione lunga configurabili per tasto, Invio spento inizialmente.
- Ore in lettere, «questa sera», durata e orario finale: stessi dati in anteprima e salvataggio.
- Promemoria locali senza account o carta, come alternativa esplicita a Google Tasks. Il collegamento Google reale resta irrisolto; guida con link diretti e nessuna attivazione di fatturazione.
- [Digitazione Apple e KeyAnt](docs/DIGITAZIONE_APPLE_E_KEYANT.md): ricerca e regressioni, senza promesse di un nuovo decoder o di precisione misurata pari a iPhone.

[Configurazione Google Tasks](docs/GOOGLE_TASKS_SETUP.md) · [Novità e limiti](AGGIORNAMENTO_0.6.60.md) · [Verifiche](VERIFICA-0.6.60.md) · [Ripristino](ROLLBACK-0.6.60.md) · [Build e firma](docs/BUILD_AND_RELEASE.md).

## Sorgenti e continuità

Il ramo GitHub contiene la documentazione. Per il progetto Android completo scaricare **KeyAnt-0.6.60-sorgenti-pubblici.zip**, oppure **KeyAnt-0.6.60-history.bundle** per avere anche baseline 0.6.50 e revisioni 0.6.51–0.6.60. Gli archivi automatici “Source code” contengono solo questo ramo documentale.

```sh
git clone KeyAnt-0.6.60-history.bundle KeyAnt
cd KeyAnt
git log --oneline --all --decorate
```

Chiavi personali, credenziali e build temporanee sono escluse. La chiave originale è necessaria per aggiornare l’installazione personale; una build con firma diversa non è compatibile come aggiornamento.

Conservati sorgenti, licenze e attribuzioni della base [HeliBoard](https://github.com/Helium314/HeliBoard). Gli asset che richiamano marchi e opere mantengono i diritti dei rispettivi titolari; la licenza del codice non concede diritti aggiuntivi su tali opere.
