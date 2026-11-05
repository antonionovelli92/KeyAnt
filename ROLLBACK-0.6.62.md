# Recupero KeyAnt 0.6.62

- Versione precedente: 0.6.61, codice 88, commit sorgenti 40bfba5029207362b719248841a11f88202538ec.
- Nuova versione: 0.6.62, codice 89, stessa firma personale.
- Nuove preferenze: ka_panel_motion (silk), ka_numbers_size (large). Nessuna cancellazione di dati o impostazioni; nessuna migrazione di account.
- Per l’aspetto precedente scegliere Scorrimento e Attuale. Per evitare il movimento scegliere Nessuna.
- Numeri/calendario mantengono interruttori indipendenti; split verticale rimane opt-in spento di default.
- Non tornare al vecchio parser per recuperare l’aspetto: reintrodurrebbe il difetto ICU già riprodotto. Ripristinare solo le modifiche grafiche su un nuovo versionCode, mantenendo il fix [.:].
- Android può rifiutare un downgrade di versionCode. Non disinstallare: per preservare i dati ricompilare il punto desiderato con versione superiore e firma originale. La chiave privata non è negli archivi pubblici.
- Gli archivi sorgenti e history.bundle della release conservano il codice completo. Il ramo remoto principale resta documentale.
