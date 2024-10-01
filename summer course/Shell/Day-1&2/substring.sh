x="a"
expr substr "hello" 1 3 >> $x
echo $x
x=$(expr substr "hello" 1 3)