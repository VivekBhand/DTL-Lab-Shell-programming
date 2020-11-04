#!/bin/bash
 
echo "String manipulation"
echo "1. Compare string"
echo "2. Joint string"
echo "3. Length of string"
echo "4.Occurance of Character"
echo "5.Occurance of word"
echo "6.Reverse string"



echo "choice"
read ch

case $ch in
	1)
		echo "ENTER STRING "
		read str1
		echo "ENTER STRING"
		read str2
		len1=`expr $str1|wc -c`
		len2=`expr $str2|wc -c`

		if [ $len1 -gt $len2 ]
		then 
			echo "String 1 is greater than string 2"
		elif [ $len1 -lt $len2 ]
		then
			echo "String 1 is smaller than string 2"
		else 
			echo "Both string are of equal length"
		fi ;;
	2)
                echo "ENTER STRING 1"
                read str1
                echo "ENTER STRING 2"
                read str2
		str3=$str1$str2
		echo "Joined string is"
		echo "$str3"
		;;



	3)
                echo "ENTER STRING "
                read str1
		len=`expr $str1|wc -c`
		len1=`expr $len - 1`
		echo "Size of string is $len1"
		;;

	4)
		echo "Enter string"
		read str
       		echo "enter a character"
		read ch
		echo "Character $ch occurance in string following time:"
		echo $str | grep -o $ch | wc -l
		;;


	5)
		echo "Enter string"
		read str
		echo "Enter word you want to find"
		read word
		echo "$word occurs following times in entered string"
		echo $str | grep -o $word | wc -l
		;;
	6)
		echo "Enter string"
		read str
		echo "Reversed string is:" `echo $str|rev`
		;;


esac


