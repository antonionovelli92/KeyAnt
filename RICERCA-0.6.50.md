# Riferimenti e scelte — KeyAnt 0.6.50

Consultazione del 3 novembre 2026. Il secondo prodotto è **Clink**, non Click. Le fonti sono le documentazioni dei produttori; non è stato svolto un confronto strumentale di FPS o latenza su dispositivi reali.

## NuKey

- https://nukeyapp.com/docs/nukey-adapt — adattamento graduale dei bersagli di tocco sulla base di osservazioni ripetute, mantenendo stabile la disposizione visibile.
- https://nukeyapp.com/docs/lighting — effetti di luce con regolazioni di velocità e intensità, interazioni e movimento ridotto.

Applicazione a KeyAnt: preservare limiti e centro dei tasti già calibrati; feedback breve e interrompibile, effetto luminoso locale distinto dall'onda. Nessun aumento arbitrario delle aree adattive.

## Clink

- https://www.anti.ltd/docs/clink/typing — suggerimenti e correzione distinti, apprendimento sul dispositivo, rispetto delle parole valide e delle correzioni annullate. Diverse funzioni sono dichiarate per test build o prossime build: non vanno presentate come tutte già distribuite.
- https://www.anti.ltd/docs/clink/look — anteprime, ricerca e personalizzazione dell'aspetto; transizioni che seguono l'ultima scelta.

Applicazione a KeyAnt: riuso delle query locali per prefisso e contesto, attesa limitata sul worker dei suggerimenti, ricerca con indice statico preparato una volta e temi personali aggiornati. Il correttore mantiene le soglie conservative e il fallback del dizionario. Non è stato integrato un nuovo modello linguistico generativo.

## Resa grafica

Quattro temi originali Vela (Perla, Grafite, Rosa cipria, Salvia) nella categoria Stile Apple: superficie satinata, riflesso sottile, varianti chiara/scura, pressione corta, controlli Maker condivisi. Sono ispirati a materiali e principi visivi, non copie di asset NuKey/Clink.

Sette maglie ricostruite con microtrama e illuminazione tessile, due nuovi materiali per trackball. Riferimenti dei marchi in `tools/references650/README.md`. Il rendering è sferico e coerente in rotazione, ma non si dichiara una scansione completa o identità pixel per pixel con oggetti reali.
