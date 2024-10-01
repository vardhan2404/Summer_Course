read num
if ((num > 0)); then
    echo "Positive Number"
else
    echo "Negative number"
fi

if (($1 % 2 == 0)); then
    echo "even Number"
else
    echo "odd number"
fi

if (($2 % 2 == 0)); then
    echo "even Number"
else
    echo "odd number"
fi

#There is also an alternative for == operator

