a=$(( $RANDOM % 500 + 1 ))

b=$(( $RANDOM % 500 + 1 ))

c=$(( $RANDOM % 500 + 1 ))

d=$(( $RANDOM % 500 + 1 ))

e=$(( $RANDOM % 500 + 1 ))

f=$(( $RANDOM % 500 + 1 ))

g=$(( $RANDOM % 500 + 1 ))

h=$(( $RANDOM % 500 + 1 ))

i=$(( $RANDOM % 500 + 1 ))

j=$(( $RANDOM % 500 + 1 ))

array+=("$a" "$b" "$c" "$d" "$e" "$f" "$g" "$h" "$i" "$j")
echo ${array[@]}

for (( k = 0; k<5; k++ ))
do

	for(( l = 0; l<5-k-1; l++))
	do
		
		if [ ${array[l]} -gt ${array[$((l+1))]} ]
		then
			
			temp=${array[l]}
			array[$l]=${array[$((l+1))]}
			array[$((l+1))]=$temp
		fi
	done
done

echo "Array in sorted order :"
echo ${array[*]}

for((m=1; m < ${#array[@]}; m++))
do
  if [[ ${array[m]} > $largest ]]
  then
    secondGreatest=$largest
    largest=${array[m]}
  elif (( ${array[m]} != $largest )) && { [[ "$secondGreatest" = "unset" ]] || [[ ${array[i]} > $secondGreatest ]]; }

  then
    secondGreatest=${array[i]}
  fi
done

echo "secondGreatest = $secondGreatest"
