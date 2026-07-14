

greet() {
    echo "Hello, $1!"
}

calculateSum() {
    echo $(( $1 + $2 ))
}

main() {
    greet "Turja"

    result=$(calculateSum 5 10)

    echo "Sum: $result"
}

main