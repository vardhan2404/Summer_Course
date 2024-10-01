ls > file2.txt
A=$(wc -l < file2.txt)
echo "no. of files is $A"