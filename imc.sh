#!/bin/bash
# Solicita datos al paciente
read -p "Dame tu peso en kg " peso
read -p "Dame tu altura en Mts " altura

# Controlar que el peso y la altura no sean negativos o 0
validador=$(echo "peso > 0 && altura > 0" | bc -l)
if [ $validador -eq 1 ]; then
  imc=$(echo "scale=1; $peso / ($altura * $altura)" | bc)
fi

# Mostrar imc

if [ $imc -lt 18.5 ]; then
  echo "Con $imc estás bajo de peso 💀"
elif [ $imc -ge 18.5 && $imc -le 24.9 ]; then
  echo "Con $imc tu peso es normal ☺️"
elif [ $imc -ge 25.0 && $imc -le 29.9 ]; then
  echo "Con $imc tienes sobrepeso 😵"
else
  echo "Con $imc tienes obesidad 🫨"
fi
