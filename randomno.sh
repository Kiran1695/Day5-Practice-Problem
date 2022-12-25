#script
##################################################################
# This is how to declare / initialize an array:
arrayName=("$@")

# Use choose first element of array as initial values for min/max;
# (Defensive programming) - this is a language-agnostic 'gaotcha' when
# finding min/max;)
max=${arrayName[0]}
min=${arrayName[0]}

# Loop through all elements in the array
for i in "${arrayName[0]}"
do
	# Update max if applicable
	if [[ "$i" -gt "$max" ]]; then
		max="$i"
	fi

	# Update min if applicable
	if [[ "$i" -lt "$min" ]]; then
		min="$i"
	fi
done
