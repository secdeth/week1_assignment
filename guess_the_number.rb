keep_playing = true
while (keep_playing) do
  keep_playing = true
  play_again = "y"
  difficulty = 0
  puts "Lets play Guess The Number. Pick a difficulty level (1,2, or 3)"
  difficulty = gets.chop
  difficulty = difficulty.to_i
  guess = 1

  if difficulty == 1
    answer = rand(1..10)
    puts "I have my number. What's your guess?. Pick a number 1 through 10."
    user_number = gets.chop
    user_number = user_number.to_i

    until user_number == answer
      if user_number < answer
        puts "Too low. Guess again: " + user_number.to_s
        user_number = gets.chop
        user_number = user_number.to_i
        guess += 1
      else user_number > answer
        puts "Too high. Guess again: " + user_number.to_s
        user_number = gets.chop
        user_number = user_number.to_i
        guess += 1
      end
    end

  elsif difficulty == 2
    answer = rand(1..100)
    puts "I have my number. What's your guess? Pick a number 1 through 100."
    user_number = gets.chop
    user_number = user_number.to_i

    until user_number == answer
      if user_number < answer
        puts "Too low. Guess again: " + user_number.to_s
        user_number = gets.chop
        user_number = user_number.to_i
        guess += 1
      else user_number > answer
        puts "Too high. Guess again: " + user_number.to_s
        user_number = gets.chop
        user_number = user_number.to_i
        guess += 1
      end
    end

  else
    answer = rand(1..1000)
    puts "I have my number. What's your guess? Enter a number 1 through 1000."
    user_number = gets.chop
    user_number =  user_number.to_i

    until user_number == answer
      if user_number < answer
        puts "Too low. Guess again: " + user_number.to_s
        user_number = gets.chop
        user_number = user_number.to_i
        guess += 1
      else user_number > answer
        puts "Too high. Guess again: " + user_number.to_s
        user_number = gets.chop
        user_number = user_number.to_i
        guess += 1
      end
    end
  end

  if guess == 1
    puts "You got it in " + guess.to_s + " guessess! You're a mind reader!"
  elsif guess <= 4 and guess >= 2
    puts "You got it in " + guess.to_s + " guessess! Most impressive."
  elsif guess <= 6 and guess >= 3
    puts "You got it in " + guess.to_s + " guessess! You can do better than that."
  else
    puts "You got it in " + guess.to_s + " guessess! Better luck next time."
  end

  if keep_playing == true
    puts "Play again?"
    keep_playing = gets.chop
      if keep_playing == "n"
        keep_playing = false
      end
  end
end
