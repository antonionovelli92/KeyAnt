# KeyAnt 0.6.58

## Riscontro dei video

37191 mostra errore Google **codice 8** dopo la scelta dell’account. 37192 conferma che il corpo tastiera trasla, ma il pannello rivelato rimane vuoto. Non è sufficiente il test precedente dei soli bounds dei figli. Il riferimento 37177, circa 17–18 secondi, mostra il calendario rivelato **a sinistra**: la mappatura precedente era invertita rispetto alla richiesta dell’utente. I video personali non vengono pubblicati.

## Due pannelli, due interruttori

Nuova destinazione **Gesti e strumenti → Pannelli laterali**. Le preferenze esistenti `ka_edge_numbers` e `ka_edge_calendar` sono mantenute: una scelta già disattivata resta disattivata.

| Opzione | Avvio | Movimento | Effetto |
|---|---|---|---|
| Tastierino numerico · destra | Invio, anche Cerca/Vai | Tieni, trascina a sinistra | Tastiera verso sinistra, numeri a destra |
| Calendario · sinistra | ?123 / funzione | Tieni, trascina a destra | Tastiera verso destra, mese a sinistra |

Si possono usare entrambi, uno soltanto o nessuno. Il tocco breve conserva la funzione normale. Trascinare il pannello verso il bordo chiude; una lettera visibile o Cancella chiudono anch’essi. La prima lettera durante il rientro conserva le coordinate del tasto toccato.

Il tastierino occupa il 40% della tastiera (massimo 216 dp); il mese il 62% (massimo 300 dp). In split il limite è il 44%, sempre con i massimi in dp. I pannelli non cambiano la geometria o le hitbox della tastiera principale. Scomparsa la cornice esterna da card; tasti e scritte seguono il tema già scelto. I materiali del Maker non sono sostituiti.

## Pannello vuoto e fluidità

Le righe e le colonne sono misurate e disposte con bounds esatti, senza dipendere dalla distribuzione differita dei pesi dei LinearLayout. Al primo reveal si invalida anche il contenuto per registrare i figli, non soltanto spostare il render node del contenitore. Durante il movimento si aggiornano le traslazioni; non si ricostruiscono i controlli a ogni frame. Non viene forzato un layer software permanente.

Questa è una correzione del percorso di layout/rendering; l’origine specifica sul Samsung del filmato non è stata isolata con log o debugger fisico. La verifica automatica comprende disegno dei contenuti e successive misurazioni, oltre ai bounds. Rimane necessaria la conferma del rendering hardware sul Fold reale. Non viene dichiarata equivalenza fotogramma per fotogramma al video NuKey né una misura di FPS mai eseguita.

## Linea dai tasti funzione

In **Gesti e selezione → Gesto con linea di collegamento** si abilita il gesto classico di trascinamento da un modificatore verso un altro tasto. Il nuovo flag `ka_modifier_slide` è inizialmente false: anche gli aggiornamenti non lo ereditano acceso da vecchi default impliciti. Quando spento, il tracker non entra nella selezione da modificatore e non disegna la linea elastica. I popup dei caratteri mantengono la propria selezione; i pannelli laterali restano indipendenti. Il doppio tocco Ctrl mantiene la propria opzione.

## Google Tasks

Il codice 8 è `INTERNAL_ERROR` nei Google Play services, il 10 è `DEVELOPER_ERROR`. Il video non permette di attribuire con certezza l’8 a rete, Play Services o registrazione OAuth. La scelta account non equivale ad aver concesso accesso alle attività.

I messaggi sono ora distinti: 8 interno, 7 rete, 10 configurazione, 16 annullamento. In caso di 8/7 il comando delle impostazioni diventa **Riprova collegamento Google Tasks**. Non vengono fatti retry automatici di salvataggi né dichiarazioni di successo. La bozza e la conferma esplicita restano protette. Non sono aggiunte credenziali, server o token persistenti.

La configurazione e il collegamento reale di Tasks rimangono aperti: la console Cloud era inaccessibile nell’ambiente di lavoro e non si dispone del telefono con log Play Services. Non considerare questa modifica dei messaggi una risoluzione dell’autorizzazione. La guida riporta package/firma e configurazione necessaria.

Fonti ufficiali: https://developers.google.com/android/reference/com/google/android/gms/common/api/CommonStatusCodes e https://developer.android.com/identity/authorization.
