#!/bin/bash

if [[ $1 == "--help" ]]; then
  echo "--date    Wyświetla aktualną datę i godzinę."
  echo "--logs    Tworzy 100 plików logów."
  echo "--logs X  Tworzy pliki logów, argument X określa ilość plików"
  exit 0
fi

if [[ $1 == "--date" ]]; then
  echo "Aktualna data i godzina: $(date)"
elif [[ $1 == "--logs" && $2 =~ ^[0-9]+$ ]]; then
  num_logs=$2
  for i in $(seq 1 "$num_logs")
  do
    filename="log${i}.txt"
    echo -e "Nazwa pliku: ${filename}\nUtworzony przez: ${0}\nData i godzina: $(date)" > "${filename}"
  done
elif [[ $1 == "--logs" ]]; then
for i in {1..100}
  do
    filename="log${i}.txt"
    echo -e "Nazwa pliku: ${filename}\nUtworzony przez: ${0}\nData i godzina: $(date)" > "${filename}"
  done
else
  echo "Nie prawidłowe flagi. Prawidłowe flagi: --date, --logs, --logs X, --help"
fi

