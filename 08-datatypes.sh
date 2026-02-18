#!/bin/bash

Num1=100
Num2=200

Sum=$(($Num1 + $Num2))

echo "Sum of numbers is $Sum"

Fruits=("Apple" "Banana" "Pomo")
echo "Fruits are ${Fruits[@]}"
echo "First fruit is ${Fruits[0]}"
echo "Second fruit is ${Fruits[1]}"
echo "Third fruit is ${Fruits[2]}"
