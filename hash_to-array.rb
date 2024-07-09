 
#Write a program that collects 5 keys and 5 values from the user, and stores them in a hash.  
#Write a method that accepts the hash as a parameter and prints out an array of keys and an array of values.  
#Call the method within your program so you know it works. 
#Question: Can you find online information on Ruby hash methods that will help with this method? 

$hash = {}

def get_hash_from_user
    (1..5).each do |i|

        puts "Please enter the key #{i}:"
        user_key = gets.chomp
        puts "Please enter the value #{i}:"
        user_value = gets.chomp

        $hash[user_key] = user_value
    end
end


def hash_to_key_and_values_arrays(hash)
    puts
    puts "Hash keys: #{hash.keys()}"
    puts "Hash values: #{hash.values()}"
end

get_hash_from_user
hash_to_key_and_values_arrays($hash)