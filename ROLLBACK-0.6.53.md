# Recupero KeyAnt 0.6.53

Baseline precedente: tag locale `v0.6.52`, commit `6468f7dd6b6098df6c8bc120c8bb7b75d245a4d5`.

## Ripristino immediato senza perdere dati

- Disattivare **Azioni contestuali** se il riconoscimento disturba.
- Disattivare **Salva eventi da KeyAnt** per ripristinare il solo editor calendario esterno.
- Tornare al tema preferito precedente: nessuna migrazione ha sostituito il tema scelto.
- Revocare il permesso calendario nelle impostazioni Android se non si desidera più il salvataggio diretto. Gli eventi già creati rimangono nel calendario e vanno gestiti lì.

## Recupero sorgenti

```sh
git clone KeyAnt-0.6.53-history.bundle KeyAnt
cd KeyAnt
git switch -c recupero-0652 v0.6.52
```

Il bundle include la baseline 0.6.50 e i tag 0.6.51–0.6.53. Lo ZIP `sorgenti-pubblici` contiene il progetto completo, comprese le librerie native già verificate; gli archivi automatici Source code della release GitHub contengono soltanto il ramo documentale.

Non forzare un downgrade APK e non disinstallare la tastiera per aggirare un errore di firma/versione. Per riportare il codice precedente sul telefono mantenendo i dati, costruire un aggiornamento con versionCode superiore a 80 e la chiave originale. La chiave non è inclusa nei file pubblici.

## Aree della revisione

- MaterialStudio651, AtelierThemes, CapGeometry, CapPreview, PressMotion, KeyboardView: materiali e pressioni.
- ContextActionIcon652, ThemeAccent, SuggestionStripView: alone icona e ciclo di vita.
- CalendarSave653, ContextActionActivity651, ContextAction651, ContextActionSettings651, manifest: salvataggio calendario e revisione.
- Nuovi test KeyAntMaterials653Test e KeyAntCalendar653Test; suite tools/verify_0653.sh.

Nessuna modifica al database degli appunti, alla memoria personale, ai dati di calibrazione o alla gestione delle chiamate. Gli eventi sono operazioni esplicite nel provider calendario, esterne al backup di KeyAnt.
