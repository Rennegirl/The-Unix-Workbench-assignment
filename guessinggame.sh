#!usr/bin/env bash
# File: guessinggame.sh

#Let's write the function to prompt the user to guess the number of files in the directory:
function prompt_a_guess {
  echo "How many files are in this directory? Please, type your guess:"
  read response
}
#Let's now count the number of files in current directory and assign it to the variable "count".
count=$(ls ./ | wc -l)
#The game starts with a function I defined.
prompt_a_guess
if [[ $response -eq $count ]]
then
  echo "Congratulations, your guess is correct!" #If the guess was correct, it congratulates the user.
else
  while [[ $response -ne $count ]] #If the guess was not correct, there might be options. And I use the while loop to make the game run till the correct answer is typed.
  do
    if [[ ! $response =~ [0-9] ]] #That is what will happen if the guess was not a number. Though it doesn't take into account the possibility of typing abracadabra including numbers in it.
    then
      echo "It's not even a number."
      prompt_a_guess
    elif [[ $response -gt $count ]] #That's for the numbers greater than needed.
    then
      echo "Your number is greater than expected. Please try again."
      prompt_a_guess
    else [[ $response -lt $count ]] #And this is for guesses that are less.
      echo "It's less than I expect! Try again. Please."
      prompt_a_guess
    fi
  done
  echo "Finally, hooray! Your guess is correct!" #When finally the correct guess is typed in it congratulates the user and stops.
fi

