factorial() {
 if [ "$1" -le 1 ]; then 
 #Base case — factorial of 0 or 1 is always 1, so recursion stops here.
 echo 1
 else
 prev=$(factorial $(( $1 - 1 ))) 
 #The function calls itself with a smaller number, and captures its result

 echo $(( $1 * prev ))
 #Multiplies the current number with the result of the smaller sub-problem.
 fi
}
echo "Enter a number:"
read n
result=$(factorial $n)
echo "Factorial of $n is $result"