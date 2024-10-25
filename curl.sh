#!/bin/bash

# Ciclo infinito per eseguire lo script ogni 5 secondi
while true; do
  # Effettua la chiamata con curl e cattura l'output e gli errori
  OUTPUT=$(curl -sS --head https://ttprod.posteitaliane.it 2>&1)

  # Verifica se l'errore è dovuto al codice di errore 6 (Could not resolve host)
  if [[ $? -eq 6 ]]; then
    echo "$(date) Errore: Could not resolve host" >&2
  fi

  # Attende 5 secondi prima di ripetere il ciclo
  sleep 5
done
