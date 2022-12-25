echo "Enter a number"
read n
case $n in
1) echo "one" ;;
10) echo "Ten" ;;
100) echo "Hundred" ;;
1000) echo "One Thousand" ;;
10000) echo "Ten Thousand" ;;
100000) echo "one lac" ;;
1000000) echo " Ten lac" ;;
*) echo "enter value in pattern(1, 10, 100, 1000, ....)" ;;
esac
