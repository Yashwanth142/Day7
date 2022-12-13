for (( i=1;i<10;i++ ))
do
arr[(($i))]=$((100+RANDOM%899))
done
echo "The array ${arr[@]}"

l1=100
for (( i=1;i<10;i++ ))
do
if [[ ${arr[i]} -gt l1 ]]
then
 l2=$l1;
 l1=${arr[i]};
elif [[ ${arr[i]} -gt l2 && ${arr[i]} -lt l1 ]]
then
l2=${arr[i]}
fi
done
echo "$l2 is the second largest number"

s1=999
for (( i=1;i<10;i++ ))
do
if [[ ${arr[i]} -lt s1 ]]
then
 s2=$l1;
 s1=${arr[i]};
elif [[ ${arr[i]} -lt s2 && ${arr[i]} -gt s1 ]]
then
s2=${arr[i]}
fi
done
echo "$s2 is the second smallest number"
