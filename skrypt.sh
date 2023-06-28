#!/bin/bash

if [[ "$1" == "--date" ]]; then
  echo "Dzisiejsza data: $(date)"
fi

if [[ "$1" == "--logs" ]]; then
  	if [-n "$2" ]; then
		count="$2"
	else
		count=100
	fi
	for ((i=1; i<=count;i++));do
    		filename="log${i}.txt"
    		echo "Nazwa pliku: $filename" >> "$filename"
    		echo "Nazwa skryptu: skrypt.sh" >> "$filename"
    		echo "Data: $(date)" >> "$filename"
  	done
fi
