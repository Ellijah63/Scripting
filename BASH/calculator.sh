#!/bin/bash

function calculate(){
        read -p "Enter Number1: " num1
        read -p "Enter Number2: " num2
}


while true
do
        echo "1. Add"
        echo "2. Subtract"
        echo "3. Multiply"
        echo "4. Divide"
        echo "5. Quit"

        read -p "How would you like to calcuate? " choice

        case $choice in
                1)
                        calculate
                        echo Answer=$(( num1 + num2 ));;
                2)
                        calculate
                        echo Answer=$(( num1 - num2 ));;
                3)
                        calculate
                        echo Answer=$(( num1 * num2 ));;
                4)
                        calculate
                        echo Answer=$(( num1 / num2 ));;
                *)
                        break
        esac
done
