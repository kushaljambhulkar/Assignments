echo "*** Coverting between the different temperature scales ***"
echo "1. Convert Celsius tempreture into Fahrenheit"
echo "2. Convert Fahrenheit temperatures into Celsius"
read -p "Select your Choice (1-2) : " num

case $num in 
	1)
	echo -n "Enter tempreture (C) : "
	read tc
	tf=$(echo "scale=2;((9/5) * $tc) + 32" |bc)
 	echo "$tc  C = $tf F"
	;;
	
	2)
	echo -n "Enter tempreture (F) : "
	read tf
	tc=$(echo "scale=2;(5/9)*($tf-32)"|bc)
	echo "$tf = $tc"

	;;
	*)
		echo choose 1 or 2 only !!!

	;;
esac
