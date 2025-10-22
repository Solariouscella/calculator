#!/bin/bash

# Usage: ./calculator.sh <num1> <num2> <operation>
# Example: ./calculator.sh 10 5 add

if [ $# -ne 3 ]; then
    echo "Usage: $0 <num1> <num2> <operation>"
    echo "Available operations: add, sub, div"
    exit 1
fi

num1=$1
num2=$2
op=$3

case $op in
    add)
        ./add.sh "$num1" "$num2"
        ;;
		sub)
        ./sub.sh "$num1" "$num2"
        ;;
		div)
        ./div.sh "$num1" "$num2"
        ;;
    *)
        echo "Invalid operation! Use add, sub, or div."
        exit 1
        ;;
esac

