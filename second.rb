

person = {}
puts"Enter your first name:"
person[:first_name] = gets.chomp
 
puts "Enter your last name:"
person[:last_name] = gets.chomp

puts "Enter your age:"
person[:age] = gets.chomp

puts "Enter your Street address:"
person[:street] = gets.chomp

puts "Enter your city"
person[:city] = gets.chomp

puts "Enter your state"
person[:state] = gets.chomp


puts "Person: ", person
puts "\nPerson keys: ", person.keys
puts "\nPerson values: ", person.values


person[:first_name] = person[:first_name].capitalize
person[:last_name] = person[:last_name].capitalize
person[:city] = person[:city].capitalize

person[:state] = person[:state].upcase

puts "Person: ", person



