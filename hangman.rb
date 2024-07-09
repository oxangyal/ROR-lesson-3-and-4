     #Write a program `hangman.rb` that contains a method called `hangman`.  
     #The method's parameters are a word and an array of letters.  It returns a string showing the letters that have been guessed.  
     #Call the method several times from within your program, testing with different words and strings, and printing out what is returned, 
     #so that you know that your hangman method works.
    #Example: `hangman("bob", ["b"])` should return `"b_b"`
    #Example: `hangman("alphabet", ["a", "h"])` should return `"a__ha___"`

    def hangman(word, guessed_letters)
    
        result = ""
      
        word.each_char do |char|
            if guessed_letters.include?(char)
                result += char
            else 
                result += "_"
            end
        end
         result

    end
    puts hangman("bob", ["b"])  
    puts hangman("alphabet", ["a", "h"])