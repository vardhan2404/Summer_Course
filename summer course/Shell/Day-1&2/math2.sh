num1=10
num2=5
str=num1+num2
# str=$num1+num2
str1=$num1+$num2
sum=$((num1+num2))
sume= expr $num1 + $num2
# sume=$(expr $num1 + $num2)
# sume=$expr $num1 +  $num1
# sume=(expr $num1 + $num2)
# sume=$(expr num1 + num2)
echo "str: "$str
echo "str1: "$str1
echo "sum: "$sum
echo "sume: "$sume