def guesser_game
    min = 1
    max = 100
    next_guess = rand(1..100)

    puts "Think of a number in range from #{min} until #{max}. I will try to guess your number."
    puts "Press Enter key"
    gets

    loop do
        puts "I'm guessiing the number #{next_guess}"
        puts "Is my guess correct (or c), too low(or l) or too high(or h)?"
        input = gets.chomp
        if input == "correct" || input == "c"
            puts "Hurray!"
            break
        elsif input == "too high" || input == "h"
            if next_guess == min 
                puts "You are lying! Guess value cannot be less then #{min}."
                break
            else
                if next_guess == max
                    max = next_guess - 1
                else
                    max = next_guess
                end
            end
        elsif input == "too low" || input == "l"
            if next_guess == max 
                puts "You are lying! Guess value cannot be more then #{max}."
                break 
            else
                if next_guess == min
                    min = next_guess + 1
                else
                    min = next_guess
                end
            end
        else 
            puts "Invalid input"
            next
        end   
        next_guess = (min + max) / 2
    end
end

loop do
    guesser_game()
    puts "Play again? y/n"
    answer = gets.chomp
    if answer == "n"
        puts "See you later, Alligator!"
        break
    end
end