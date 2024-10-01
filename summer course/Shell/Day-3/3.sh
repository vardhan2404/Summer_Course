# mkdir D1
cd D1
# mkdir D3
ls > F1.txt
cd D3
# touch F3.txt
# touch F4.txt
# touch F5.txt
c=0
while ( $c < 100 ); do
    random_number=$((RANDOM % 500 + 1))
    echo $random_number >> F3.txt
    c=$((c+1))
done

# prime()
# {
#     for i in $(cat F3.txt); do
#         y=$(bc <<< "scale=0; sqrt(($i))")
#         for j in $(seq 2 $y); do
#             temp=$(($i%$j))
#             if (( temp == 0)); then
#                 break
#             fi
#             if (( $j == $y )); then
#                 echo $i' ' >> F4.txt
#             fi
#         done
#     done
# }

prime() {
    while IFS= read -r num; do
        is_prime=true
        sqrt=$(bc <<< "scale=0; sqrt($num)")
        for (( divisor = 2; divisor <= sqrt; divisor++ )); do
            if (( num % divisor == 0 )); then
                is_prime=false
                break
            fi
        done
        if $is_prime; then
            echo $num >> F4.txt
        fi
    done < F3.txt
}

prime
    

# y=$(ls)
# for i in y; do
#     case i in
#         *.txt)
#             i >> F5.txt
#         ;;
#     esac
# done

