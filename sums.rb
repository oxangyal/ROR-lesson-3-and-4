
#Create a program `sums.rb` with two classes.

    #(a) a class called `Sum1` with an initialize method that takes two parameters and sets the instance variable `@total` to the sum of the two.  
    #Include a line at the top of the class:

    #```ruby
    #attr_accessor :total
    #```

    #(b) a class called `Sum2` with an initialize method that takes two parameters `a` and `b`, 
    #and sets the instance variable `@a` to the parameter `a` and the instance variable `@b` to the parameter `b`. 
    #Create a method `new_total` inside `Sum2` that returns the sum of the instance variables `@a` and `@b`.

    #(c) In the mainline program, create instances of `Sum1` and `Sum2`, passing `5` and `6` as parameters on the new statement.
    #  Print out the `total` for `Sum1`.  Print out the `new_total` for `Sum2`.

class Sum1

    attr_accessor :total 

	def initialize(a, b)
		@total = a + b
	end
end

sum1 = Sum1.new(3, 12)
puts "Sum1 total: #{sum1.total}"  
	

class Sum2
    attr_reader :a, :b
	def initialize(a, b)
		@a = a
        @b = b
	end
    def new_total
      @a + @b
    end

end

sum2 = Sum2.new(14, 5)
puts "Sum2 new_total: #{sum2.new_total}"

sum1 = Sum1.new(5, 6)
sum2 = Sum2.new(5, 6)
 #sum1 = Sum1.new(5, 0)
 #sum2.b = 6
puts "Sum1 after reasigned values total: #{sum1.total}"
puts "Sum2 after reasigned values new_total: #{sum2.new_total}"

