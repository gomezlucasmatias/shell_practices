#!/bin/bash
# number_analyzer.sh

echo "🔢 ANALIZADOR DE NÚMEROS"
numeros=()

# Bucle while para ingresar números
while true; do
  read -p "Ingresa un número (o 'fin' para terminar): " input

  if [ "$input" = "fin" ]; then
    break
  fi

  if [[ "$input" =~ ^-?[0-9]+$ ]]; then
    numeros+=($input)
    echo "✅ Número $input agregado"
  else
    echo "❌ '$input' no es un número válido"
  fi
done

# Bucle for para mostrar estadísticas
if [ ${#numeros[@]} -gt 0 ]; then
  echo ""
  echo "📊 ESTADÍSTICAS"
  echo "Cantidad: ${#numeros[@]}"

  # Calcular suma y promedio con bucle
  suma=0
  for num in "${numeros[@]}"; do
    suma=$((suma + num))
  done
  promedio=$((suma / ${#numeros[@]}))
  echo "Suma: $suma"
  echo "Promedio: $promedio"

  # Clasificar números
  pares=0
  impares=0
  positivos=0
  negativos=0

  for num in "${numeros[@]}"; do
    if [ $((num % 2)) -eq 0 ]; then
      ((pares++))
    else
      ((impares++))
    fi

    if [ $num -gt 0 ]; then
      ((positivos++))
    elif [ $num -lt 0 ]; then
      ((negativos++))
    fi
  done

  echo ""
  echo "📈 CLASIFICACIÓN:"
  echo "🟢 Pares: $pares"
  echo "🔴 Impares: $impares"
  echo "➕ Positivos: $positivos"
  echo "➖ Negativos: $negativos"

else
  echo "No ingresaste ningún número"
fi
