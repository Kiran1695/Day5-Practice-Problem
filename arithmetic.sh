
a=$1
b=$2
c=$3

arrayName=()
result1=$((a+b*c))
arrayName+=($result1)
result2=$((c+a/b))
arrayName+=($result2)
result3=$((a%b+c))
arrayName+=($result3)
result4=$((a*b+c))
arrayName+=($result4)

max=${arrayName[0]}

for i in "${arrayName[@]}"
do
    # Update max if applicable
    if [[ "$i" -gt "$max" ]]; then
        max="$i"
    fi

done

echo "1: $result1, 2: $result2, 3: $result3, 4: $result4"
echo "Max is: $max"
