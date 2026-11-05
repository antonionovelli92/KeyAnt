# KeyAnt 0.6.64

Tastiera Android personale basata su HeliBoard, con temi, appunti, trackball e azioni locali dalla frase.

## Installazione

Scarica **KeyAnt-0.6.64.apk** dalla [release v0.6.64](https://github.com/antonionovelli92/KeyAnt/releases/tag/v0.6.64). Installa sopra la versione esistente senza disinstallare: firma personale invariata, versionCode 91.

## Novità

- Funzioni disattivabili singolarmente; Calendario unificato opzionale per tutte le frasi evento/promemoria. Pillole e glow con colori indipendenti o tema, sfumatura unificata e feedback verde/rosso invariato.
- Promemoria: Tasks con avviso KeyAnt opzionale e ora nelle note, Calendario con colore distinto, altre app tramite comando Android compatibile o condivisione esplicita.
- Una conferma nella pillola per salvataggi diretti; verde solo dopo esito confermato. Rimozione prudente della sola frase salvata.
- Riconoscimento di mezzora/mezz’ora e tempi composti; autocorrezione più conservativa sulle parole distanti.
- Correzione del ridisegno e gesto inverso dei pannelli affiancati, suono del tastierino, tema/luci/dimensioni/suoni nel Maker.
- Agenda giornaliera su 24 ore con blocchi colorati e sovrapposizioni; ricerca GIF in pillola; categorie, percorsi e anteprime Studio più chiare.

[Configurazione Google Tasks](docs/GOOGLE_TASKS_SETUP.md) · [Novità e limiti](AGGIORNAMENTO_0.6.64.md) · [Verifiche](VERIFICA-0.6.64.md) · [Ripristino](ROLLBACK-0.6.64.md) · [Build e firma](docs/BUILD_AND_RELEASE.md).

## Sorgenti e continuità

Il ramo GitHub contiene la documentazione. Per il progetto Android completo scaricare **KeyAnt-0.6.64-sorgenti-pubblici.zip**, oppure **KeyAnt-0.6.64-history.bundle** per avere anche baseline 0.6.50 e revisioni 0.6.51–0.6.64. Gli archivi automatici “Source code” contengono solo questo ramo documentale.

```sh
git clone KeyAnt-0.6.64-history.bundle KeyAnt
cd KeyAnt
git log --oneline --all --decorate
```

Chiavi personali, credenziali e build temporanee sono escluse. La chiave originale è necessaria per aggiornare l’installazione personale; una build con firma diversa non è compatibile come aggiornamento.

Conservati sorgenti, licenze e attribuzioni della base [HeliBoard](https://github.com/Helium314/HeliBoard). Gli asset che richiamano marchi e opere mantengono i diritti dei rispettivi titolari; la licenza del codice non concede diritti aggiuntivi su tali opere.
