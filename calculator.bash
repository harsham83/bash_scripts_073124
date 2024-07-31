#!/bin/bash

echo " 
Press A for Addition;
Press S for substraction;
Press D for Division;
Press M for multiplication;
Press Md for Modulo;
"

read operation

if [ $operation == A ];then
	echo first number to add
	read one
	echo second number to add
	read two
	echo "the sum of $one and $two is $(( $one+$two ))"
elif [ $operation == S ];then
	echo first number to substract
        read one
        echo second number to substract
        read two
        echo "the difference of $one and $two is $(( $one-$two ))"
elif [ $operation == D ];then
        echo first number to divide
        read one
        echo second number to divide
        read two
        echo "the result of $one / $two is $(( $one/$two ))"
elif [ $operation == M ];then
        echo first number to Multiply
        read one
        echo second number to Multiply
        read two
        echo "the product of $one and $two is $(( $one*$two ))"
elif [ $operation == Md ];then
        echo first number
        read one
        echo second number
        read two
        echo "the remider of $one and $two is $(( $one%$two ))"
fi

