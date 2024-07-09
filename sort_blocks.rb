
    #Note the use of the spaceship operator `<=>`.  It does what the commented out
    #lines do, but on one line.

    #Add to this program. Add additional calls to `book_array.sort` that pass blocks.  For your first
    #call to sort, pass a block so that the array is sorted in order of title,
    #and print out the array.  For your second call to sort, pass a block so that
    #the array is sorted in order of copies, and print out the array.

    class Book
      attr_reader :author, :title, :count

      def initialize(author, title, count)
        @author = author
        @title = title
        @count = count
      end

      def to_s
        "author: #{author} title: #{title} count: #{count}"
      end
    end

    book_array = []
    book_array << Book.new("Beatrice Potter", "Peter Rabbit", 25)
    book_array << Book.new("Henry Fielding", "Tom Jones", 12)
    book_array << Book.new("Bob Woodward", "All the President's Men", 30)

    puts "Sorting alphabetically by author"

    new_array = book_array.sort do |a, b|
      author1 = a.author.downcase
      author2 = b.author.downcase

      author1 <=> author2
      # if author1 > author2
      #   1
      # elsif author1 < author2
      #   -1
      # else
      #   0
      # end
    end
    puts new_array
    puts

    puts "Sorting by title"

    new_array_title = book_array.sort do |a, b|
    
        a.title.downcase <=> b.title.downcase
    end

    puts new_array_title
    puts

    puts "Sorting by copies"

    new_array_copies = book_array.sort do |a, b|
        a.count <=> b.count
    end
    puts new_array_copies

