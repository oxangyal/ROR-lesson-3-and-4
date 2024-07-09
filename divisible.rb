#Write a method that returns in an array all the numbers between 1 and 100 that are divisible by 2 or 3 or 5. 
#then call the method in your program and print out what it returns. 

def devisible_numbers
    array = []

(1..100).each do |i|
    if i % 2 == 0 || i % 3 == 0 || i % 5 == 0
        array << i
    end   
end

array
end

result = devisible_numbers
puts "All numbers between 1 and 100 that are divisible by 2, 3, or 5: #{result}"