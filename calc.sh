
echo "Enter num1 here:"
read num1
echo "Enter num2 here:"
read num2


echo "select operation you want to perform"
echo "1. Additon"
echo "2. Substarction"
echo "3. Division"
echo "4. Multiplication"
echo "5. Comparision"


read choice
case $choice in
	1)
		sum=` expr $num1 + $num2 `
		echo " Addition of numbers is $sum ";;
	2)
        	sub=` expr $num1 - $num2 `
        	echo " Substraction of $num1 from $num2 is $sub ";;
	4)
        	mult=` expr $num1 \* $num2 `
        	echo " Multiplication of numbers is $mult ";;
	3)
        	div1=` expr $num1 / $num2 `
        	echo " $num1 divided by $num2 is $div1 "
		div2=` expr $num2 / $num1 `
		echo " $num2 divided by $num1 is $div2 " ;;
	5)
        	if [ $num1 > $num2 ]
		then
			echo " $num1 is greater than $num2 "
		elif [ $num2 > $num1 ]
		then
			echo " $num2 is greater than $num1 "
		else 
			echo " Both are equal"
		fi ;;
	*)
		echo "wrong input"
esac
echo "program ended"
