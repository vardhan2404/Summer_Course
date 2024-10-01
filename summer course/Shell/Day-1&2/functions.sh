sum()
{
    total=0
    len=$#
    for i in "$@"; do
        total=$(($total + $i))
    done
    echo "Sum is $total"
    avg=$(($total/$len))
    return $avg
}
sum 1 2 3 4 5
average=$?
echo -n "the average is: "
echo $average
