#!/bin/bash

FRUITS=("Apple" "Kiwi" "Orange") #Array

echo "First fruit is: $FRUITS"
echo "Second fruit is: ${FRUITS}"
echo "Third fruit is: ${FRUITS[2]}"
echo "All fruits are: ${FRUITS[@]}"
