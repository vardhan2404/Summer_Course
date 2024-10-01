fname=$"Vardhan"
lname=$"KNC"
# fullname=$fname" "$lname
# fullname=$fname.$lname
# fullname=$fname$lname
# fullname=$fname""$lname
fullname=$fname$lname
echo "$fullname"

fname+=$lname
echo "$fname"
echo $fname
length=${#fname}
echo "Length of the fname($fname) is: $length"

len=$(echo -n $fname | wc -m)
echo "length of fname: $len"

name=$fname+$lname
echo "name: "$name