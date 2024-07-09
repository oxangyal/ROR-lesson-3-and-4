
#It should have a method `do_calc` that calls a block using a `yield` statement. 
 #The yield statement will pass the numbers `7` and `9` to a block, and then `do_calc` will print out the result returned by the yield.  
 #Call the `do_calc` method twice in your program. The first time, pass a block that adds the two numbers. 
#The second time, pass a block that multiplies the two numbers.  Your program should print out `16` and `63`.


def do_calc
    yield(7, 9)
end

do_calc do |x, y|
    puts x + y
 end
 
 do_calc do |x, y|
    puts x * y
 end