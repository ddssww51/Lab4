#!/bin/bash

if [[ $1 == "--date" ]]; then
  echo "Aktualna data i godzina: $(date)"
else
  echo "Nie prawidłowa flaga. Prawidłowa flaga --date"
fi