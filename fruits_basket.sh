#!/bin/bash

# Define costs
COST_PINEAPPLE=50
COST_BANANA=4
COST_WATERMELON=23
COST_BASKET=1

# Calculate total price
TOTAL=$((COST_PINEAPPLE + (COST_BANANA * 2) + (COST_WATERMELON * 3) + COST_BASKET))

# Display The total pice
echo "Total cost is $TOTAL cents"
