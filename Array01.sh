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

for((i=1; i < ${#array[@]}; i++))
do
  if [[ ${array[i]} > $largest ]]
  then
    secondGreatest=$largest
    largest=${array[i]}
  elif (( ${array[i]} != $largest )) && { [[ "$secondGreatest" = "unset" ]] || [[ ${array[i]} > $secondGreatest ]]; }
  then
    secondGreatest=${array[i]}
  fi
done

echo "secondGreatest = $secondGreatest"

