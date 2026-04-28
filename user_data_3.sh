#!/bin/bash
echo -n "Hola forastero! dime por favor tu nombre "
read nombre

echo -n "Cuantos años llevas encima? "
read edad

echo "Bien forastero teniendo $edad y portando $nombre de nombre debes de ser muy sabio no?"
echo "Pues te propongo un juego, tu, $nombre de la gran cabeza me vas a decir un número"
echo -n "y yo te voy a devolver el doble de ese numero. Pues bien... A que esperas? "
read numero

echo "Pues el doble de $numero es $((numero * 2)). A que te he sorprendido no?"
