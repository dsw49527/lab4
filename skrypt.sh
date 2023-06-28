#!/bin/bash

if [[ "$1" == "--date" ]]; then
  echo "Dzisiejsza data: $(date)"
elif [[ "$1" == "--logs" ]]; then
  for ((i=1; i<=100; i++))
  do
    filename="log${i}.txt"
    echo "Nazwa pliku: $filename" >> "$filename"
    echo "Nazwa skryptu: skrypt.sh" >> "$filename"
    echo "Data: $(date)" >> "$filename"
  done
fi
