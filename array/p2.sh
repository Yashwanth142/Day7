for (( i=1;i<10;i++ ))
do
arr[(($i))]=$((100+RANDOM%899))
done
echo "The array ${arr[@]}"

for (( i = 0; i<10; i++ ))
do

    for(( j = 0; j<10-i-1; j++ ))
    do

        if [[ ${arr[j]} -gt ${arr[$((j+1))]} ]]
        then

            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}
            arr[$((j+1))]=$temp
        fi
    done
done

echo "Array in sorted order :"
echo ${arr[@]}
echo "The second smallest number is ${arr[2]}"
echo "The secon largest number is ${arr[8]}"
