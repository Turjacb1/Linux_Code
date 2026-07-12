#!/bin/bash

echo "Enter first number:"
read num1

echo "Enter second number:"
read num2

# Compare numbers
if [ "$num1" -gt "$num2" ]; then
    echo "$num1 is greater."
elif [ "$num1" -lt "$num2" ]; then
    echo "$num2 is greater."
else
    echo "Both numbers are equal."
fi

# Arithmetic operations
echo "Sum = $((num1 + num2))"
echo "Difference = $((num1 - num2))"
echo "Product = $((num1 * num2))"

# Quotient
if [ "$num2" -ne 0 ]; then
    echo "Quotient = $((num1 / num2))"
else
    echo "Division by zero is not possible."
fi