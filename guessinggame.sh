function guess_files {
    local num_files=$(ls -1 | wc -l)
    echo "How many files are in the current directory?"
    while true; do
        read guess
        if [[ $guess -lt $num_files ]]; then
            echo "Your guess is too low. Try again."
        elif [[ $guess -gt $num_files ]]; then
            echo "Your guess is too high. Try again."
        else
            echo "Congratulations! You guessed the correct number of files."
            break
        fi
    done
}
guess_files
