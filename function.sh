#Calling a Function
greet() {
 echo "Hello, welcome to the OS Lab!"
}
greet # calling the function



#Passing Arguments to Functions
greetUser() {
 echo "Hello, $1! You are $2 years old."
}
greetUser "turja" 

#Return Values in Functions

square() {
 echo $(( $1 * $1 ))
}
answer=$(square 6)
echo "Square: $answer"



#Local vs Global Variables

count=10 # global variable
myFunc() {
 local count=5 # local variable, only visible inside myFunc
 echo "Inside function: $count"
}
myFunc
echo "Outside function: $count"