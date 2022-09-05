echo "Enter number"

read num

function prime

{

for((i=2; i<=num/2; i++))
do
	if [ $((num%1)) -eq 0 ]
	then 
		echo "$num is not a prime number"
		exit
	fi
done

echo "$num is a prime number."

}

m=`prime $number`
echo "$m"

read m
 
function palin
{
number=$n
reverse=0
while [ $n -gt 0 ]
do 
a= `expr $n % 10 `
n= `expr $n / 10 `
reverse=`expr $reverse \* 10 + $a`
done
echo $reverse
if [ $number -eq $reverse ]
then
	echo "Number is palindrome"
else
	echo "Number is not palindrome"
fi
}
r=`palin $n`
echo "$r"

