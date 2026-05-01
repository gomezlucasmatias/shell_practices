#!/bin/bash
read -p "Dame un numero " num

if [ $num -gt 0 ]; then
  echo "Es positivo y $(($num * 2)) es su doble"
elif [ $num -lt 0 ]; then
  echo "Es negativo y $(($num * -1)) es su valor absoluto"
else
  echo "Es cero, el punto de equilibrio"
fi
