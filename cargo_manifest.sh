#!/bin/bash

# Define arrays for each cargo bay's inventory
forward_bay=()
midship_bay=()
aft_bay=()

# Add items for forward_bay
forward_bay+=("Gloof earth")
forward_bay+=("Ungravity module")
forward_bay+=("Solar panel")

# Add items for midship_bay
midship_bay+=("Lunar Zonda")
midship_bay+=("Glur juice")
midship_bay+=("Angana leaf")

# Add items for aft_bay
aft_bay+=("Solid fuell")
aft_bay+=("RCT Cannon")
aft_bay+=("KLR20 shield")

# Check if an argument is provided
if [ $# -eq 0 ]; then
    echo "Plese specify a cargo bay: forward, midship, aft"
    exit 1
fi

# Display inventory based on the argument
if [ "$1" = "forward" ]; then
    echo "Forward Bay Inventory:"
    echo "1. ${forward_bay[0]}"
    echo "2. ${forward_bay[1]}"
    echo "3. ${forward_bay[2]}"
elif [ "$1" = "midship" ]; then
    echo "Midship Bay Inventory:"
    echo "1. ${midship_bay[0]}"
    echo "2. ${midship_bay[1]}"
    echo "3. ${midship_bay[2]}"
elif [ "$1" = "aft" ]; then
    echo "Aft Bay Inventory:"
    echo "1. ${aft_bay[0]}"
    echo "2. ${aft_bay[1]}"
    echo "3. ${aft_bay[2]}"
else
    echo "Invalid cargo bay. Choose forward, midship, or aft."
    exit 1
fi
