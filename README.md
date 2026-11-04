# KeyAnt 0.6.56

Tastiera Android personale basata su HeliBoard, con temi, appunti, trackball e azioni locali dalla frase.

## Installazione

Scarica **KeyAnt-0.6.56.apk** dalla [release v0.6.56](https://github.com/antonionovelli92/KeyAnt/releases/tag/v0.6.56). Installa sopra la versione esistente senza disinstallare: firma personale invariata, versionCode 83.

## Novità

- Una pillola mostra il titolo e la data durante la digitazione. Un tocco conferma. La freccia continua a dare accesso agli strumenti.
- «Ricordami di prendere pasticche tra un quarto d’ora» crea una proposta Tasks. «Crea evento 5 maggio alle 21 biglietti cinema» propone l’evento. Un numero apre il dialer dopo conferma.
- Premi a lungo il tasto simboli e trascina verso destra per i numeri. Da Invio trascina verso sinistra per il mese. Puoi disattivare ciascun gesto in Gesti e strumenti.
- Otto profili di tasti scolpiti con corsa, pareti, caratteri e materiali differenti. Li trovi nei temi e nel laboratorio con anteprima.
- Correzione delle coordinate usate dalla calibrazione del tocco. Le geometrie visibili e le dimensioni dei tasti continuano a guidare il rilevamento.

Google Tasks richiede la registrazione OAuth Android e il consenso sul telefono. Per una Task con orario, KeyAnt salva il giorno su Google e programma l’avviso sul dispositivo dopo la risposta del servizio. Calendario può scrivere direttamente con i permessi Android. [Configurazione](docs/GOOGLE_TASKS_SETUP.md).

[Novità e limiti](AGGIORNAMENTO_0.6.56.md) · [Verifiche](VERIFICA-0.6.56.md) · [Ripristino](ROLLBACK-0.6.56.md) · [Build e firma](docs/BUILD_AND_RELEASE.md).

## Sorgenti e continuità

Il ramo GitHub contiene la documentazione. Per il progetto Android completo scaricare **KeyAnt-0.6.56-sorgenti-pubblici.zip**, oppure **KeyAnt-0.6.56-history.bundle** per avere anche baseline 0.6.50 e revisioni 0.6.51–0.6.56. Gli archivi automatici “Source code” contengono solo questo ramo documentale.

```sh
git clone KeyAnt-0.6.56-history.bundle KeyAnt
cd KeyAnt
git log --oneline --all --decorate
```

Chiavi personali, credenziali e build temporanee sono escluse. La chiave originale è necessaria per aggiornare l’installazione personale; una build con firma diversa non è compatibile come aggiornamento.

Conservati sorgenti, licenze e attribuzioni della base [HeliBoard](https://github.com/Helium314/HeliBoard). Gli asset che richiamano marchi e opere mantengono i diritti dei rispettivi titolari; la licenza del codice non concede diritti aggiuntivi su tali opere.
