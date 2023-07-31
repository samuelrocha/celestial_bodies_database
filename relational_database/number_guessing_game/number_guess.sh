#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))

echo "Enter your username:"
read USERNAME

PLAYER_ID=$($PSQL "SELECT player_id FROM players WHERE username='$USERNAME'")

if [[ -z $PLAYER_ID ]]; then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  INSERT_PLAYER=$($PSQL "INSERT INTO players(username) VALUES('$USERNAME')")
  PLAYER_ID=$($PSQL "SELECT player_id FROM players WHERE username='$USERNAME'")
else
  GAMES_INFO=$($PSQL "SELECT COUNT(game_id), MIN(number_of_guesses) FROM games INNER JOIN players USING(player_id) WHERE username='$USERNAME';")
  GAMES_PLAYED=$(echo "$GAMES_INFO" | sed -r 's/\|[0-9]+//')
  BEST_GAME=$(echo "$GAMES_INFO" | sed -r 's/[0-9]+\|//')
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

echo "Guess the secret number between 1 and 1000:"
read GUESS
NUMBER_OF_GUESSES=1
while ((GUESS != SECRET_NUMBER)); do
  if [[ $GUESS =~ ^[0-9]+$ ]]; then
    if (( GUESS > SECRET_NUMBER )); then
      echo "It's lower than that, guess again:"
    else
      echo "It's higher than that, guess again:"
    fi
    (( NUMBER_OF_GUESSES+=1 ))
  else
    echo "That is not an integer, guess again:"
  fi
  read GUESS
done

INSERT_GAMES=$($PSQL "INSERT INTO games(player_id, number_of_guesses) VALUES($PLAYER_ID,$NUMBER_OF_GUESSES)")
echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
