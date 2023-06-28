#!/bin/bash

if [[ "$1" == "--date" ]]; then
	date
fi

if [[ "$1" == "--logs" ]]; then
  	if [ -n "$2"]; then
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
fi

if [[ "$1" == "--help" ]]; then
  	echo "Dostępne opcje:"
  	echo "--date: Wyświetla dzisiejszą datę."
  	echo "--logs <liczba_plików>: Tworzy określoną liczbę plików logx.txt, zawierających nazwę pliku, nazwę skryptu i datę."
else
  	echo "Nieznana opcja. Użyj 'skrypt.sh --help' aby wyświetlić dostępne opcje."
fi
