> Checkpoint verificato 0.6.68; APK compilata, pubblicazione degli allegati ancora da completare. I link di release sottostanti saranno validi solo dopo la pubblicazione.

# KeyAnt 0.6.68

Tastiera Android personale basata su HeliBoard, con temi, appunti, trackball e azioni locali dalla frase.

## Installazione

Scarica **KeyAnt-0.6.68.apk** dalla [release v0.6.68](https://github.com/antonionovelli92/KeyAnt/releases/tag/v0.6.68). Installa sopra la versione esistente senza disinstallare: firma personale invariata, versionCode 95. Non occorre installare le versioni intermedie, anche su un secondo telefono. Account e permessi delle integrazioni restano personali.

## Novità

- Calendario richiamabile anche con swipe dalla prima icona a sinistra; nessun nuovo gesto dei numeri sulla destra della barra.
- Swipe strumenti/suggerimenti disattivabili separatamente, attivi di default. Stesse impostazioni in più menu e un solo risultato nella ricerca.
- Gesti da ?123 e ABC più tolleranti al movimento iniziale; ripristino dei pannelli dopo split e cambi di geometria.
- Calendario affiancato sul Fold orizzontale con interruttore distinto, inizialmente disattivo.
- Passaggio animato tra icona contestuale e pillola; la X conserva il contesto.
- Materiali e popup originali nelle varianti China, cinque nuovi temi coordinati e sei presentazioni opzionali della barra con anteprima.
- Comandi rapidi di solidità e RGB sotto i temi; valori di trasparenza conservati.

[Configurazione Google Tasks](docs/GOOGLE_TASKS_SETUP.md) · [Novità e limiti](AGGIORNAMENTO_0.6.68.md) · [Verifiche](VERIFICA-0.6.68.md) · [Ripristino](ROLLBACK-0.6.68.md) · [Build e firma](docs/BUILD_AND_RELEASE.md).

## Sorgenti e continuità

Il ramo GitHub contiene la documentazione. Per il progetto Android completo scaricare **KeyAnt-0.6.68-sorgenti-pubblici.zip**, oppure **KeyAnt-0.6.68-history.bundle** per avere anche baseline 0.6.50 e revisioni 0.6.51–0.6.68. Gli archivi automatici “Source code” contengono solo questo ramo documentale.

```sh
git clone KeyAnt-0.6.68-history.bundle KeyAnt
cd KeyAnt
git log --oneline --all --decorate
```

Chiavi personali, credenziali e build temporanee sono escluse. La chiave originale è necessaria per aggiornare l’installazione personale; una build con firma diversa non è compatibile come aggiornamento.

Conservati sorgenti, licenze e attribuzioni della base [HeliBoard](https://github.com/Helium314/HeliBoard). Gli asset che richiamano marchi e opere mantengono i diritti dei rispettivi titolari; la licenza del codice non concede diritti aggiuntivi su tali opere.
