: <<'COMMENT' 1 — Arrays
Write a script that:
● Takes 5 numbers as input from the user and stores them in an array (use read -a).
Prints all the numbers entered.
Finds and prints the maximum number in the array using a loop.
COMMENT

#!/bin/bash

echo "Enter 5 numbers separated by spaces:"
read -a numbers

echo "Numbers entered: ${numbers[@]}"

max=${numbers[0]}

for num in "${numbers[@]}"
do
    if [ "$num" -gt "$max" ]
    then
        max=$num
    fi
done

echo "Maximum number: $max"




#Exercise 2 — Strings
#Write a script that:
#● Takes a sentence as input from the user.
#● Prints the total number of characters in the sentence.
#● Counts and prints how many vowels (a, e, i, o, u) appear in the sentence.



echo "Enter a sentence:"
read sentence

length=${#sentence}

vowels=0

for ((i=0; i<length; i++))
do
    ch=${sentence:i:1}

    case "$ch" in
        [aeiouAEIOU])
            ((vowels++))
            ;;
    esac
done

echo "Total characters: $length"
echo "Total vowels: $vowels"




#Exercise 3 — Functions
#Write a script that:
#● Defines a function isPrime(num) that prints whether a given number is Prime or Not 
#Prime.
# ● Uses a loop from 1 to 50 to call this function for every number and print the result





isPrime() {

    num=$1

    if [ "$num" -lt 2 ]
    then
        echo "$num : Not Prime"
        return
    fi

    for ((i=2; i<num; i++))
    do
        if (( num % i == 0 ))
        then
            echo "$num : Not Prime"
            return
        fi
    done

    echo "$num : Prime"
}

for ((n=1; n<=50; n++))
do
    isPrime $n
done

#Exercise 4 — Arrays + Strings + Functions (Combined)

#Write a script that:
#● Stores 5 student names in one array and their marks in another array (in matching order).
#● Defines a function calculateGrade(mark) that returns/prints A for marks >= 80, B for 
#marks >= 60, and C otherwise.
#● Loops through both arrays together and prints each student's name along with their grade, 
#e.g. "Rahim: A".



students=("Rahim" "Karim" "Sakib" "Nabil" "Rafi")
marks=(85 72 59 91 65)

calculateGrade() {

    mark=$1

    if [ "$mark" -ge 80 ]
    then
        echo "A"

    elif [ "$mark" -ge 60 ]
    then
        echo "B"

    else
        echo "C"
    fi
}

echo "Student Results"
echo "-------------------------"

for ((i=0; i<5; i++))
do
    grade=$(calculateGrade ${marks[i]})

    echo "Name: ${students[i]}  Marks: ${marks[i]}  Grade: $grade"
done