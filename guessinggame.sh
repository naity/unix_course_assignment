function compare {
   if [[ $guess -lt $num_files ]]
    then
        echo "Your guess is too low"
    else
        echo "Your guess is too high"
    fi
}

num_files=$(ls | wc -l)

echo "Please guess how many files are in the current directory:"
read guess

while [[ $guess -ne $num_files ]]
do
    compare
    read guess
done

echo "Congradulations! You've guessed it right!"
