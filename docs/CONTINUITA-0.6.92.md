# KeyAnt 0.6.92 — geometria e resa dei riferimenti

Versione Android 119, pacchetto `it.keyant.keyboard`. Base completa 0.6.91, commit locale `592deb5`. Le tre raccolte comprendono 12 palette, ciascuna chiara/scura.

## Correzioni

NuPhy: spalla superiore più larga, incavo profondo con gradiente continuo, profilo alto e stretto, eliminazione dei due contorni sottili della 0.6.91, proporzioni e incisioni ricalibrate. Smalto: labbro metallico e faccia a cuscino distinti dall'incavo opaco. iOS bicolore: profilo piatto, diagonale unica sul piano della tastiera. Il profilo piatto è ora selezionabile anche come forma nel Maker.

Altezze predefinite specifiche, centratura della tastiera sul Fold aperto e rispetto delle altezze impostate manualmente. Catalogo e prova del tema usano l'altezza e il padding del candidato. Le scritte dei profili fisici sono maiuscole solo nel disegno: il codice digitato e lo stato Shift restano quelli Android.

RGB aderente al bordo inferiore del materiale; incavo, smalto e piatto hanno reazioni diverse alla pressione. Glow delle lettere e riempimenti luminosi limitati alla faccia. Trackball coordinata con riflesso opaco/smaltato; skin scelte esplicitamente mantenute. Nel Maker il font personalizzato prevale sul font del preset, e testi/icone seguono il centro della faccia e la corsa del tasto.

## HDR

L'impostazione separata “HDR delle luci RGB”, disattivata per default, usa Gainmap Android API 34+ sui soli emettitori e la finestra HDR sui display che dichiarano supporto. Livelli 1,5×/2×; fallback SDR. L'opzione precedente è rinominata “Brillantezza dei colori”, perché modifica il contrasto SDR.

Le immagini software e i test della gainmap verificano geometria, alpha e metadati, non la luminanza del display. La luminosità effettiva, il tone mapping OEM e la fluidità sul Fold fisico richiedono una prova sul dispositivo. Il codice non promette un numero fisso di nit o equivalenza con iOS.

Riferimenti tecnici primari consultati: https://nukeyapp.com/ ; https://developer.android.com/media/grow/ultra-hdr/display ; https://developer.android.com/reference/android/graphics/Gainmap ; https://developer.android.com/reference/android/view/Window#setDesiredHdrHeadroom(float).

## Scrittura e regressioni

Conservati apprendimento/correzione, contesto, dettatura, calendario e pannelli della 0.6.91. La descrizione pubblica NuKey non documenta i dettagli dell'algoritmo: non viene dichiarata una sua replica. La verifica include scrittura tramite eventi touch reali e test esistenti di lingua, predizione, calendario e gesti.

Il file di verifiche allegato riporta metodi eseguiti, configurazioni geometriche, tap ed immagini distintamente. Il numero dei casi non equivale a una garanzia di assenza di bug. Il confronto visivo deriva dai riferimenti video compressi forniti: non è una misura subpixel di un originale non compresso.

## Continuità

`AGENTS.md` fissa i requisiti grafici e di verifica per gli aggiornamenti futuri. I sorgenti completi sono nell'archivio `KeyAnt-0.6.92-sorgenti.zip`; il bundle contiene la cronologia locale, la patch le differenze dalla 0.6.91. Il ramo GitHub principale mantiene documentazione e patch; gli archivi completi sono asset della release. Non usare l'archivio automatico GitHub “Source code” come sorgente completo dell'app.

La chiave originale di firma è esclusa da tutti gli archivi. Per riprodurre un aggiornamento installabile serve la stessa chiave; una firma diversa non aggiorna l'installazione esistente. Build verificata con JDK 21, Gradle 8.14, Android SDK 36, variante `debugNoMinify` con `debuggable=false`.
