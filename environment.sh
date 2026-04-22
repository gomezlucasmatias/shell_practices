#!/bin/bash

CURRENT_LOCATION=$(pwd)
echo 'My HOME is: $HOME'
echo 'My current path is:' $PATH
echo 'I want to probe print current directory using pwd:' $CURRENT_LOCATION

echo 'Now somes arithmetics operations:'

X=(365)
Y=(36)

echo 'Sum X and Y is:' $((X + Y))

