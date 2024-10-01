grep "[a-zA-Z]" test.sh
 grep "la" test.sh
grep "^I" a.txt
grep "ow
$" a.txt
grep "er$" a.txt
grep --color=auto "ow$" file.txt
grep "[e-r]$" a.txt
grep "^e.*[0-9]
$" 1.txt
 grep "^e.*R$" 1.txt
grep "ow\+" a.txt
sed "s/hi/hey/g" a.txt
sed "s/hi/hey/g" a.txt > b.txt
sed "s/hi/hey/g" b.txt
 sed "/hey/d" b.txt
sed "s/$/hey/" b.txt
sed "s/^/hey/" b.txt

#awk 