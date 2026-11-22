# KeyAnt 0.7.3 — dettatura nel campo e modelli vocali

La dettatura scrive per default nel campo del messaggio. I risultati parziali sostituiscono solo la porzione di testo della sessione; il microfono conclude, × ripristina l’eventuale selezione originale finché campo, testo e cursore sono invariati. Non invia messaggi. Digitare interrompe l’aggiornamento vocale; un cambio campo/cursore interrompe la sostituzione e permette di copiare la trascrizione. Le app che non espongono un estratto completo e affidabile usano la card precedente. La card rimane selezionabile in Dettatura → Ascolto e conserva pulizia prudente/AI con confronto originale.

Quindici effetti condividono il renderer fra ascolto, anteprima in loop, selettore e Maker: Originale, Onde, Punti, Vela, VU meter, Spettro, Equalizzatore, Impulso, Particelle, Liquido, Creste, Corde, Specchio, Accordatore, Vetro arcobaleno. Il vetro copre tutta la capsula. Il movimento si ferma fuori schermo e rispetta le preferenze del sistema/app. Le animazioni rappresentano il livello audio, non la confidenza del riconoscitore.

Motori: Automatico (mantiene la preferenza locale precedente e relativo fallback), Solo sul dispositivo Android, Servizio Android, Parakeet TDT 0.6B v3 offline facoltativo. Parakeet richiede un download esplicito di 670.576.784 byte (circa 671 MB) in Dettatura, verifica SHA256 di tutti i file e non passa automaticamente alla rete. L’audio non viene salvato. Il modello lavora per frasi dopo pause, con coda limitata e segnalazione se il telefono non tiene il ritmo. Non è streaming parola per parola né riscrittura grammaticale. Le prestazioni del Fold/Pixel restano da misurare sul dispositivo; un test CPU server non le dimostra. I suggerimenti del dizionario personale sono supportati dal servizio Android; Parakeet non riceve automaticamente il vocabolario personale.

La pausa predefinita passa da 12 a 5 secondi; i valori già scelti restano invariati. I risultati identici non prolungano l’ascolto dopo fine parlato. L’attesa del risultato finale dopo stop passa a 3 secondi quando esiste già testo, conservandolo se il servizio tarda. Questa soglia non significa comprendere semanticamente la fine di una conversazione.

ANT e ricerca raggiungono destinazione, motore ed effetto. I comandi di disattivazione conservano lo stile e una scelta esplicita aggiorna anche la creazione Maker attiva. ANT non scarica modelli autonomamente e non attiva Parakeet se manca il download. Il Maker conserva il proprio effetto vocale. Il decoder touch rifiuta probabilità invalide e sceglie il candidato con evidenza maggiore senza dipendere dall’ordine dei vicini, mantenendo la protezione del centro dei tasti, le soglie conservative, i confini split e le policy private. Non si dichiara una misura di accuratezza di digitazione o superiorità a Gboard.

## Riferimenti e limiti delle prove
- Registrazione utente 69,802 s: traccia PCM interamente silenziosa (picco/RMS zero), verificabile visivamente ma inadatta al confronto audio/testo. File e frame personali esclusi dalla pubblicazione.
- Video NuKey: riferimento per stili di animazione e scelta del modello Parakeet, non un’implementazione Android riutilizzabile. Dimensione iOS del video non applicabile al pacchetto ONNX Android.
- https://huggingface.co/nvidia/parakeet-tdt-0.6b-v3
- https://k2-fsa.github.io/sherpa/onnx/pretrained_models/offline-transducer/nemo-transducer-models.html
- https://developer.android.com/reference/android/speech/RecognizerIntent
- https://nukeyapp.com/

Modello convertito: csukuangfj/sherpa-onnx-nemo-parakeet-tdt-0.6b-v3-int8, revisione ed5d745623472f97cfc2e6c2916ee248798fc5a8. Runtime sherpa-onnx 2.0.3, SHA256 4c766e2e74c9d33d595338c21fe3b305c73ba45d47e96a235675c33142a2ec50. Il download del runtime per ricompilare è in tools/fetch-parakeet-runtime.py. Licenze incluse negli asset dell’APK. Modello NVIDIA CC BY 4.0; runtime Apache 2.0 e ONNX Runtime MIT.

Prova reale del modello su CPU Linux: campione inglese ufficiale sherpa e campione italiano Google FLEURS. Sul campione italiano compare «prefige» invece di «prefigge» (1 sostituzione su 23 parole normalizzate). Una singola prova conferma il funzionamento, non la superiorità del modello né l’accuratezza nella dettatura spontanea. Dettagli in PARAKEET-0.7.3.json. Dataset: https://huggingface.co/datasets/google/fleurs (CC BY 4.0).
