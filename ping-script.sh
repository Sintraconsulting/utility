#!/bin/sh

# Indirizzo del servizio da pingare
SERVICE="google.com"

# Loop infinito per eseguire ping in continuazione
while true; do
  # Esegui il ping e salva solo gli errori
  if ! ping -c 1 $SERVICE > /dev/null; then
    echo "$(date): Ping a $SERVICE fallito" >> /dev/stdout
  fi
  # Attendere 5 secondi prima del prossimo ping
  sleep 5
done
