#!/bin/bash
# Solicita datos al paciente
read -p "Dame tu peso en kg " peso
read -p "Dame tu altura en Mts " altura

# Controlar que el peso y la altura no sean negativos o 0
validador=$(echo "$peso > 0 && $altura > 0" | bc -l)
if [ $validador -eq 1 ]; then
  imc=$(echo "scale=1; $peso / ($altura * $altura)" | bc)
fi

# Mostrar imc
echo "$imc"

if (( $(echo "$imc < 18.5" | bc -l) )); then
  echo "Con $imc estás bajo de peso 💀"
elif (( $(echo "$imc >= 18.5 && $imc <= 24.9" | bc -l) )); then
  echo "Con $imc eres normal ☺️"
elif (( $(echo "$imc >= 25.0 && $imc <= 29.9" | bc -l) )); then
  echo "Con $imc tienes sobrepeso 😵"
else
  echo "Con $imc tienes obesidad 🫨"
fi
