# PART 1
# echo "Line1 outside braces"
# {
#     echo "Line1 inside braces"    
#     echo "Line2 inside braces"
# }
# echo "Line2 outside braces"

# PART 2
# echo "Line1 outside braces"
# (
#     echo "Line1 inside braces"    
#     echo "Line2 inside braces"
# )
# echo "Line2 outside braces"

# PART 3
# echo "Line1 outside braces"
# {
#     echo "Line1 inside braces"    
#     echo "Line2 inside braces"
# } > output.txt
# echo "Line2 outside braces"

# PART 4
echo "Line1 outside braces"
(
    echo "Line1 inside braces"    
    echo "Line2 inside braces"
) > output.txt
echo "Line2 outside braces"