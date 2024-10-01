#!/bin/bash
# part 1
# A="hey"
# {
#     echo "Inside subshell"
#     echo "before modifying in subshell: $A"
#     A="hello"
#     echo "The variable A after modifying in subshell: $A"
# }
# echo "The variable just after subshell: $A"
# No subshell created in this case
# A="hi"
# echo "The variable after reassignment outside subshell: $A"

#part 2
A="hey"
(
    echo "Inside subshell"
    echo "before modifying in subshell: $A"
    A="hello"
    echo "The variable A after modifying in subshell: $A"
)
echo "The variable just after subshell: $A"
A="hi"
echo "The variable after reassignment outside subshell: $A"