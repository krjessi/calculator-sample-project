#!/bin/bash

echo "========================="
echo " Advanced Calculator "
echo "========================="

while true
do
	echo ""
	echo "Choose operation:"
	echo "1. Addition"
	echo "2. Subtraction"
	echo "3. Multiplication"
	echo "4. Division"
	echo "5. BODMAS Expression"
	echo "6. Exit"

	read choice

	case $choice in
    	1)
		echo "Enter first number:"
		read num1

		echo "Enter second number:"
		read num2

        	result=$((num1 + num2))
            	echo "Result: $result"
            	;;
    	2)
		echo "Enter first number:"
		read num1

                echo "Enter second number:"
		read num2

            	result=$((num1 - num2))
            	echo "Result: $result"
            	;;
    	3)
		echo "Enter first number:"
		read num1

		echo "Enter second number:"
	        read num2

            	result=$((num1 * num2))
            	echo "Result: $result"
            	;;
    	4)
		echo "Enter first number:"
		read num1

		echo "Enter second number:"
		read num2

            	if [ $num2 -eq 0 ]; then
	    		echo "Division by zero is not allowed"
            	else
	    		result=$((num1 / num2))
	        	echo "Result: $result"
                                                                                       	   fi
            	;;

	5)
		echo "Enter BODMAS expression:"
		read expression

		result=$(echo "$expression" | bc)
                echo "Result: $result"
	        ;;

									            6)
		echo "Exiting Calculator..."
		break
		;;
                                                                                    *)
            	echo "Invalid choice"
            	;;
      esac
done
