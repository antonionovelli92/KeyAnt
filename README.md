# KeyAnt 0.6.57

Tastiera Android personale basata su HeliBoard, con temi, appunti, trackball e azioni locali dalla frase.

## Installazione

Scarica **KeyAnt-0.6.57.apk** dalla [release v0.6.57](https://github.com/antonionovelli92/KeyAnt/releases/tag/v0.6.57). Installa sopra la versione esistente senza disinstallare: firma personale invariata, versionCode 84.

## Novità

- Riconoscimento della frase con icona luminosa: i suggerimenti restano disponibili. Tocca l’icona per aprire la pillola e conferma per salvare.
- Apertura automatica opzionale in Azioni dalla frase. La X chiude l’anteprima e conserva il contesto aggiornato nell’icona senza riaprire a ogni parola.
- La tastiera scorre realmente per rivelare numeri o calendario. I pannelli vengono misurati subito durante il gesto, anche con layout a una mano.
- Un video scartato non torna cambiando app o dopo una reimportazione dalla galleria. Una nuova copia esplicita può essere proposta.
- Per gli eventi vengono riconosciuti indirizzo esplicito e durata: «evento domani alle 21 cinema in via Roma 12 per 2 ore».
- Tutti i materiali e i profili di tasti precedenti restano disponibili.

Google Tasks richiede OAuth Android configurato e il consenso sul telefono. Il risultato Google viene ora letto anche quando il ritorno non è RESULT_OK, per conservare l’errore specifico. Il collegamento reale non è stato certificato: la console Google Cloud non è accessibile dall’ambiente di lavoro. [Configurazione e limiti](docs/GOOGLE_TASKS_SETUP.md).

[Novità e limiti](AGGIORNAMENTO_0.6.57.md) · [Verifiche](VERIFICA-0.6.57.md) · [Ripristino](ROLLBACK-0.6.57.md) · [Build e firma](docs/BUILD_AND_RELEASE.md).

## Sorgenti e continuità

Il ramo GitHub contiene la documentazione. Per il progetto Android completo scaricare **KeyAnt-0.6.57-sorgenti-pubblici.zip**, oppure **KeyAnt-0.6.57-history.bundle** per avere anche baseline 0.6.50 e revisioni 0.6.51–0.6.57. Gli archivi automatici “Source code” contengono solo questo ramo documentale.

```sh
git clone KeyAnt-0.6.57-history.bundle KeyAnt
cd KeyAnt
git log --oneline --all --decorate
```

Chiavi personali, credenziali e build temporanee sono escluse. La chiave originale è necessaria per aggiornare l’installazione personale; una build con firma diversa non è compatibile come aggiornamento.

Conservati sorgenti, licenze e attribuzioni della base [HeliBoard](https://github.com/Helium314/HeliBoard). Gli asset che richiamano marchi e opere mantengono i diritti dei rispettivi titolari; la licenza del codice non concede diritti aggiuntivi su tali opere.
