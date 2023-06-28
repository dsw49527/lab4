#!/bin/bash

if [[ "$1" == "--date" || "$1" == "-d" ]]; then
  date

elif [[ "$1" == "--logs" || "$1" == "-l" ]]; then
  if [[ -n "$2" ]]; then
    num_files=$2
  else
    num_files=100
  fi

  for ((i=1; i<=num_files; i++)); do
    filename="log${i}.txt"
    echo "Nazwa pliku: $filename" >> "$filename"
    echo "Nazwa skryptu: skrypt.sh" >> "$filename"
    echo "Data: $(date)" >> "$filename"
  done

elif [[ "$1" == "--error" || "$1" == "-e" ]]; then
    if [[ -n "$2" ]]; then
        num_files="$2"
    else
        num_files=100
    fi

    for ((i=1; i<=num_files; i++)); do
        dirname="error${i}"
        mkdir -p "$dirname"
        filename="${dirname}/error${i}.txt"
        echo "Nazwa pliku: $filename" > "$filename"
        echo "Nazwa skryptu: skrypt.sh" >> "$filename"
        echo "Data: $(date)" >> "$filename"
    done

elif [[ "$1" == "--init" || "$1" == "-i" ]]; then
    git clone https://github.com/dsw49527/lab4
    export PATH="$PWD:$PATH"
    echo "Repozytorium zostało sklonowane do bieżącego katalogu."
    echo "Ścieżka do repozytorium została dodana do zmiennej środowiskowej PATH."

elif [[ "$1" == "--help" || "$1" == "-h" ]]; then
  echo "Dostępne opcje:"
  echo "--date, -d: Wyświetla dzisiejszą datę."
  echo "--init, -i: Klonuje repozytorium i dodaje zmienną środowiskową PATH."
  echo "--logs, -l <liczba_plików>: Tworzy określoną liczbę plików logx.txt."
  echo "--error, -e <liczba_plików>: Tworzy określoną liczbę plików errorx.txt."
else
  echo "Nieznana opcja. Użyj 'skrypt.sh -h' aby wyświetlić dostępne opcje."
fi
