#!/bin/bash

fruits=("Apple" "Banana" "Mango" "Orange")
echo "Total fruits: ${#fruits[@]}"
for fruit in "${fruits[@]}"; do  #@ number element
 echo "Fruit: $fruit"
done


fruits[4]="Grapes" 
fruits[1]="Blueberry" 
unset fruits[0] 
echo "${fruits[@]}"

#array slicing
numbers=(10 20 30 40 50 60 70)
echo "${numbers[@]:1:3}"  


#: Loop-based input 



echo "How many elements do you want to enter?"
read n


for ((i=0; i<n; i++))
do
    echo "Enter element $((i+1)):"
    read numbers[i]
done


echo "Array elements: ${numbers[@]}"



# Building the array with += while reading

numbers=()      # Create an empty array

echo "How many elements do you want to enter?"
read n

for (( i=0; i<n; i++ ))
do
    echo "Enter a number:"
    read value

    numbers+=("$value")    # Add the value to the end of the array
done

echo "Array elements: ${numbers[@]}"

