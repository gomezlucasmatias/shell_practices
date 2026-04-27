#!/bin/bash
read -p "Hola forastero! Como te llamas?" nombre
read -p "Cuantos años dices tener?" edad

echo "Entonces puedo decirte querido $nombre que dentro de un año vas a tener $((edad + 1))"
