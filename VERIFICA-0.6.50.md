# Verifica KeyAnt 0.6.50

## Test automatici

100 test pertinenti in 17 classi, tutti passati. Primo giro: 97 passati e 3 controlli sul numero totale degli elementi non aggiornati (271 → 275 temi, 84 → 86 sfere). Dopo adeguamento dei soli conteggi, rieseguite interamente le tre classi interessate: 31 test passati. Nessuna modifica al codice applicativo dopo il giro di regressione.

Copertura: composizione e maiuscole, apprendimento conservativo e contesto, privacy, accesso agli appunti, multitocco e gesture, animazioni rapide indipendenti, impostazioni e trasparenze su larghezze Fold, geometria e contrasto dei temi, differenza bagliore/onda/scia, rotazione e materiali delle sfere. Il test rapido verifica stato e interruzione delle animazioni: non misura input latency su hardware.

| Classe | Test |
|---|---:|
| KeyAntBackground649Test | 7 |
| KeyAntBehavior648Test | 5 |
| KeyAntCalibration644Test | 2 |
| KeyAntGestureStreamTest | 4 |
| KeyAntGlass648Test | 2 |
| KeyAntMultiTouch636Test | 3 |
| KeyAntStudio649Test | 2 |
| KeyAntStudio68Test | 2 |
| KeyAntUpgrade650Test | 8 |
| KeyAntV616Test | 18 |
| KeyAntV635Test | 13 |
| KeyAntV646Test | 9 |
| KeyAntV647Test | 6 |
| KeyAntV65Test | 5 |
| KeyAntV66Test | 4 |
| KeyAntV68Test | 9 |
| SuggestionCase647Test | 1 |

## Ispezione visiva

`KeyAnt-0650-vela.png`: 4 temi × chiaro/scuro, render del codice Android; contrasto nominale delle legende almeno 4.5:1 nei test. Trasparenze personalizzate possono naturalmente ridurlo.

`KeyAnt-0650-trackballs.png`: 7 maglie e 2 materiali nuovi su quattro orientamenti. Sorgenti vettoriali per i nuovi sponsor documentate; non è una certificazione di corrispondenza completa con i prodotti reali.

## Limiti

Non è disponibile un Fold fisico in questa esecuzione. Vanno provati sul telefono: scrittura veloce con vibrazione, cambio app con password/Autofill, rotazione continua, consumo e frame time. Non viene dichiarato un aumento percentuale della precisione: conteggi aggregati di cancellazioni e interventi non misurano la correttezza degli interventi.

Il contatore «correzioni nel contesto» riguarda le specifiche regole italiane; un valore nullo non dimostra che dizionario contestuale e memoria locale non siano attivi. Nessuna telemetria personale viene pubblicata.

## Build, APK e analisi statica

- `assembleDebugNoMinify`: completato. Manifest confezionato rigenerato esplicitamente per eliminare un residuo della build 0.6.49. Verificato **nel file APK**, non soltanto nel nome: `it.keyant.keyboard`, versione 0.6.50, codice 77, minSdk 26, targetSdk 35.
- ABI arm64-v8a e x86_64; integrità ZIP, allineamento 16 KB e firma verificati. Le sette mappe maglie nell'APK coincidono byte per byte con i sorgenti aggiornati.
- Certificato SHA-256: `bf7bc5998c63e50de960d4506499dce857cea819468673d0ca52d31bed527aa4`, uguale alla firma personale precedente.
- APK SHA-256: `e4333295e7c246bc2018021baa564fedb6dd347282f2339301650f66eefc53d1`.
- Lint completo eseguito: **non passa**. 550 errori, 450 warning, 1 hint, stessi totali documentati per la baseline 0.6.49. Errori: 509 MissingTranslation, 20 WrongConstant, 12 NewApi, 4 AppCompatCustomView, 3 LocalContextConfigurationRead, 1 MissingPermission, 1 SuspiciousIndentation. Nessuna segnalazione nelle quattro nuove classi applicative. Questo controllo non va descritto come pulito: il debito preesistente resta da risolvere.
