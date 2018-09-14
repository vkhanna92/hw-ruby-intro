# When done, submit this entire file to the autograder.

# Part 1

def sum arr
        sum1 = 0
        for x in arr
                 sum1 = sum1+x
        end
        sum1
end

def max_2_sum arr
        if arr.length == 0
                return 0
        elsif arr.length == 1
                return arr[0]
        else
                return arr.max(2).reduce(:+)
        end
end

def sum_to_n? arr, n
        hash = Hash.new
        for i in arr
                if hash.key?(n-i)
                        return true
                end
                hash[i] = i
        end
        return false
end

#Homework2

def hello(name)
        "Hello, "+name
end

def starts_with_consonant? s
        s =~ /^(?=[^aeiou])(?=[a-z])/i
end

def binary_multiple_of_4? s
        return true if s == "0"
        /^[10]*00$/.match(s) != nil
end

# Homework3
class BookInStock
        attr_accessor :isbn, :price
        #Constructor
		
        def initialize(isbn,price)
                if isbn == "" or  price <= 0
                        raise ArgumentError.new("Invalid parameter values")
                else
                        @isbn = isbn
                        @price = price
                end
        end
        def price_as_string
                sprintf("$%.2f", @price)
        end

end
