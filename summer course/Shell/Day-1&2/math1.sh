echo "The sum of 4 and 5 is"
expr 4 + 5
echo "The products of 11 and 2 is"
expr 11 \* 2
echo "The length of string hello is"
expr length hello
echo "The substring of length 3 starting from index 2 in hello is"
expr substr hello 2 3

expr 14 \/ 2
expr 14 \% 3

expr $((14 / 2 + 6)) \/ 3

expr 14 / 2 + 6 \/ 3

echo $((7 ** 2))
