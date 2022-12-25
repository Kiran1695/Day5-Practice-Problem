
read -p "Enter Unit: " src_unit
read -p "Enter value: " value
read -p "Enter Convert unit: " dest_unit

case "$src_unit-$dest_unit" in
    inch-feet)
      new_value=$(( $value / 12 ))
      ;;
    feet-inch)
      new_value=$(( $value * 12 ))
      ;;
    feet-meter)
      fraction=$(( 328/100 ))
      new_value=$(( $value / $fraction ))
      ;;
    meter-feet)
        fraction=$(( 328/100 ))
      new_value=$(( $value * $fraction ))
      ;;
    *)  echo "I don't know how to convert $src_unit to $dest_unit"
      ;;
esac

echo "$value $src_unit = $new_value $dest_unit"
