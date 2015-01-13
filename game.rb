def max_number
  return 100
end

def greeting
  puts "Guess the random number."
  puts "It's between 1 and #{max_number}."
  puts "You get 5 tries"
  puts "Go!"
end

def get_number_from_user
  gets.chomp.to_i
end

def remaining_guesses(count)
  if 5-count == 1
    puts "You have 1 guess remaining."
  else
    puts "You have #{5-count} guesses remaining."
  end
end

guess_array=[]
comp_number = rand (1 .. max_number)
still_playing = true
greeting
count = 1
guess = get_number_from_user
while count <= 5 && still_playing
    remaining_guesses(count)
  if guess == comp_number
    puts "Congratulations you guessed it!"
    guess_array << guess
    still_playing = false
    exit
  elsif
    guess_array.include?(guess)
    puts "And you already guessed that one smart guy!!"
  elsif guess > comp_number
    guess_array << guess
    puts "Try again the number is lower!"
  else
    guess_array << guess
    puts "Try again the number is higher!"
  end
  count = count + 1
  guess = get_number_from_user
end
if still_playing == true
  puts "You're out of moves!"
end
