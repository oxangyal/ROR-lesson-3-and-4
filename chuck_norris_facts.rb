# It should have a loop that prompts the user whether they want to know a fact about Chuck Norris.  
#If so, it displays a random Chuck Norris fact, and then prompts the user again.  
#If the user declines, the program exits.  You use the `ChuckNorris` module of the Faker gem.  
#The documentation for Faker is [here.](https://rubydoc.info/github/faker-ruby/faker)  
#In order to have access to the Faker gem, you need to have the following line in your program:

#     ```ruby
#     require 'faker'
#     ```

#     The following line prints out a Chuck Norris fact:

#     ```ruby
#     puts Faker::ChuckNorris.fact
#     ```

#     The modules comprising the Faker gem are organized into namespaces.  
#The `ChuckNorris` module is within the `Faker` module, which is the meaning of the `::` above.  Complete and try your program.


require 'faker'

loop do

  puts "Do you want to know a fact about Chuck Norris? (y/n)"

response = gets.chomp.downcase

    if response == "y"
        puts Faker::ChuckNorris.fact

    elsif response == 'n'
        puts "Goodbye!"
        break
    else
        puts "Please enter 'y' for yes or 'n' for no."
      end
    end
