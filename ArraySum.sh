array=( 1 2 3 4 5 )
sum="$((${array[@]/%/+}0))"
echo "Total: $sum"
