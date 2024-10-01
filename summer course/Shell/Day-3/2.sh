# mkdir D1
cd D1
# mkdir D3
ls > F1.txt
cd D3
# touch F3.txt
# touch F4.txt
# touch F5.txt

c=0
while (( c < 100 )); do
    random_number=$((RANDOM % 500 + 1))
    echo $random_number >> F3.txt
    c=$((c + 1))
done

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

ls | grep '.txt$' > F5.txt

mkdir D2

mv D2 D1

# cp -r ./D1 ./D1
# cd D1
# mv D1 D2


