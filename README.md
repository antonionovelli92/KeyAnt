# KeyAnt 0.6.67

Tastiera Android personale basata su HeliBoard, con temi, appunti, trackball e azioni locali dalla frase.

## Installazione

Scarica **KeyAnt-0.6.67.apk** dalla [release v0.6.67](https://github.com/antonionovelli92/KeyAnt/releases/tag/v0.6.67). Installa sopra la versione esistente senza disinstallare: firma personale invariata, versionCode 94. Non occorre installare le versioni intermedie, anche su un secondo telefono. Account e permessi delle integrazioni restano personali.

## Novità

- Intervalli composti: inizio fra dieci minuti, fine domani o in un giorno di questo mese.
- Esiti delle pillole più contenuti, riflesso vetro e nuove entrate/uscite.
- Swipe immediato o pressione e trascinamento, indipendenti per numeri e calendario.
- Barra opzionale a manopola, carosello o visibile solo quando serve; Classica resta predefinita.
- Catalogo temi unificato, Preferiti/Usati spesso come categorie e tre nuovi materiali China.
- Protezione da correzioni tardive riferite a una parola precedente.

[Configurazione Google Tasks](docs/GOOGLE_TASKS_SETUP.md) · [Novità e limiti](AGGIORNAMENTO_0.6.67.md) · [Verifiche](VERIFICA-0.6.67.md) · [Ripristino](ROLLBACK-0.6.67.md) · [Build e firma](docs/BUILD_AND_RELEASE.md).

## Sorgenti e continuità

Il ramo GitHub contiene la documentazione. Per il progetto Android completo scaricare **KeyAnt-0.6.67-sorgenti-pubblici.zip**, oppure **KeyAnt-0.6.67-history.bundle** per avere anche baseline 0.6.50 e revisioni 0.6.51–0.6.67. Gli archivi automatici “Source code” contengono solo questo ramo documentale.

```sh
git clone KeyAnt-0.6.67-history.bundle KeyAnt
cd KeyAnt
git log --oneline --all --decorate
```

Chiavi personali, credenziali e build temporanee sono escluse. La chiave originale è necessaria per aggiornare l’installazione personale; una build con firma diversa non è compatibile come aggiornamento.

Conservati sorgenti, licenze e attribuzioni della base [HeliBoard](https://github.com/Helium314/HeliBoard). Gli asset che richiamano marchi e opere mantengono i diritti dei rispettivi titolari; la licenza del codice non concede diritti aggiuntivi su tali opere.
