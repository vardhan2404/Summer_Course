#! /bin/bash

fun()
{
    if (($# == 1)); then
        return $@
    fi
    if(($# == 2)); then
        prod=1
        for i in $@; do
            sum=$((sum+i))
            prod=$((prod*i))
        done
        array[0]=$sum 
        array[1]=$prod
        return array
    fi
    if (($# == 3)); then
        sum=0
        for i in $@; do
            sum=$((sum-i))
        done
        array[0]=sub
        return array
    fi
}
if (($#==2)); then
    fun $1
fi
if (($#==3)); then
    fun $1 $2
fi
if (($#==4)); then
    fun $1 $2 $3
fi
array=$?
for i in $array; do
    echo $i
done
