#!/bin/bash
echo -n "Hola forastero! Cuál es tu nombre? "
read nombre

echo -n "Cuantos años tienes? "
read edad

echo "Querido $nombre sabiendo que tienes $edad lo más probable es que en 40 años tengas $((edad + 40))"
