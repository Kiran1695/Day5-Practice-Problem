
#!/bin/bash

read -p "Enter Date: " date
read -p "Enter Month: " Month

# should validate input: non-blank, numeric

combo=0
res="false"
st=1

if [ $Month -ge 3 -a $Month -le 6 ]; then
    # 30 for Apr, Jun
    # 31 for Mar, May
    dlimit=$((30 + (Month % 2)))
    if [ $date -ge 1 -a $date -le $dlimit ]; then
        combo=$(((Month * 100) + date))
        # true Mar 20 to Jun 20
        if [ $combo -ge 320 -a $combo -le 620 ]; then
            res="true"
            st=0
        fi
    fi
fi

echo "$Month/$date $res"
exit $st
