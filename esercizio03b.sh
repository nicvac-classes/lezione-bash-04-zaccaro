#!/bin/bash
# ============================================================
# VERIFICA BASH - Traccia B - Esercizio 3
# Permessi
# ============================================================
# OBIETTIVO:
#   Il file ambiente/sandbox/dati_privati.txt ha permessi 600.
#   1. Verifica i permessi attuali con ls -l
#   2. Aggiungi il permesso di lettura per il gruppo (g+r)
#   3. Verifica i nuovi permessi
#   4. Rimuovi tutti i permessi agli "altri" (o=)
#   5. Verifica il risultato finale
#
# Scrivi i comandi qui sotto:
# ------------------------------------------------------------
ls ambiente/sandbox/dati_privati.txt
chmod g+r ambiente/sandbox/dati_privati.txt
ls -1 ambiente/sandbox/dati_privati.txt
./ambiente/sandbox/dati_privati.txt
