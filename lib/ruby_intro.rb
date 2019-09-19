# When done, submit this entire file to the autograder.

# Part 1

def sum arr
    return arr.inject(0, :+)
end

def max_2_sum arr
    return arr.max(2).inject(0, :+)
end

def sum_to_n? arr, n
    arr.combination(2).collect {|pair| pair[0] + pair[1] == n}.any?
end

# Part 2

def hello name
    "Hello, #{name}"
end

def starts_with_consonant? s
    !/\A[a-z&&[^aeiou]]/.match(s.downcase).nil?
end

def binary_multiple_of_4? s
  begin
    Integer(s) % 4 == 0
  rescue
    false
  end
end

# Part 3

class BookInStock
    def initialize(isbn, price)
        if isbn == "" || price <= 0
           raise ArgumentError
        end
        @isbn = isbn
        @price = price
    end

    def isbn
        @isbn
    end

    def isbn=(isbn)
      @isbn = isbn
    end

    def price
        @price
    end

    def price=(price)
        @price = price
    end

    def price_as_string
        "$%0.2f" % [@price]
    end
end
