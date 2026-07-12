#!/bin/bash

# Take user input
echo "Enter your name:"
read name

echo "Enter your age:"
read age

# Get current year
year=$(date +%Y)

# Calculate birth year
birth_year=$((year - age))

# Display output
echo "Name: $name, Age: $age, Birth Year: $birth_year"