#!/bin/sh

SERVICE="https://www.google.com"

while true; do
  if ! curl -s --head $SERVICE | grep "HTTP/2 200" > /dev/null; then
    echo "$(date): Connessione a $SERVICE fallita" >> /dev/stdout
  fi
  sleep 5
done
