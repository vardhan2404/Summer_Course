# string=$(ls)
# array=()

# while read -r element; do
#     array+=("$element")
# done <<< "$string"

# for i in "${array[@]}"; do
#     case $i in
#         *.sh)
#             echo $i" => shell File"
#         ;;
#         *)
#             echo $i"=> Unknown File"
#         ;;
#     esac
# done

string=$(ls)

for i in $string; do
    case $i in
        *.sh)
            echo $i" => shell File"
        ;;
        *)
            echo $i"=> Unknown File"
        ;;
    esac
done