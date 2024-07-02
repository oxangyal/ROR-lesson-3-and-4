secret_number = rand(1..100)

loop do
  puts "Guess and enter your number: "
  guess = gets.chomp
  guess_number = guess.to_i

  if guess_number.to_s != guess
    puts "Please enter a valid number"
    next
  end

  if guess_number < 1 || guess_number > 100
    puts "Your guess should be between 1 and 100"
    next
  end

  if guess_number > secret_number
    puts "Your guess should be less"
  elsif guess_number < secret_number
    puts "Your guess should be more"
  else
    puts "Your guess is correct!"
    puts "Do you want to play again? (y/n)"
    answer = gets.chomp.downcase
    if answer == 'y' || answer == 'yes'
      secret_number = rand(1..100) 
    else
      break
    end
  end
end

puts "Game is over! See you next time"
