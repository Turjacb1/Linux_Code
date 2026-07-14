showMenu() {
 echo "1. Add"
 echo "2. Subtract"
}
add() {
 echo $(( $1 + $2 ))
}
subtract() {
 echo $(( $1 - $2 ))
}
showMenu
echo "Sum: $(add 10 4)"
echo "Difference: $(subtract 10 4)"