#!/bin/bash
echo -n "Dame un número y te diré si es positivo, negativo o cero  "
read number

if [ $number -gt 0 ]; then
  echo "Tu número es positivo"
elif [ $number -lt 0 ]; then
  echo "Tu número es negativo"
else
  echo "Tu número es 0"
fi
