num_files=$(ls | wc -l)

function guess_files {
    echo "Please guess how many files are in the current directory:"

    while :
    do
        read guess

        if [[ $guess -eq $num_files ]]
        then
            break
        elif [[ $guess -lt $num_files ]]
        then
            echo "Your guess is too low"
        else
            echo "Your guess is too high"
        fi
    done

    echo "Congradulations! You've guessed it right!"
}

guess_files