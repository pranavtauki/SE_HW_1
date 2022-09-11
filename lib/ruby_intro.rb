# frozen_string_literal: true

# Part 1
def sum(arr)
  s = 0
  if arr.length() == 0
  	0
  else
  	for i in arr
  		s = s + i
  	end
  	s
  end
end

def max_2_sum(arr)
  s = 0
  if arr.length() == 0
  	0
  elsif arr.length() == 1
  	arr[0]
  else
  	arr.sort.last(2).sum
  end
end

def sum_to_n?(arr, number)
  
  if arr.length() == 0 || arr.length() == 1 
  	return false
  else
  	(0..arr.length-1).each do |i|
  		x = i + 1
  		#puts x
  		n = number - arr[i]
  		(x..arr.length-1).each do |j|
  			if arr[j] == n
  				#puts arr[i] + arr[j]
  				return true
  			end
  		end
  	end
  end
  return false
end

# Part 2

def hello(name)
  a = "Hello, "
  a + name
end

def starts_with_consonant?(string)
  if /^[^aeiou\W]/i.match(string) == nil
  	return false
  else 
  	return true
  end

end

def binary_multiple_of_4?(string)
str = string.to_i()
if /\b[01]+\b/.match(string) != nil
	if str%4 == 0
		return true
	end
end
return false
end

# Part 3

# Object representing a book
class BookInStock
    def initialize(isbn,price)
    	if isbn.length()>0
    		@isbn = isbn
    	else
    		raise ArgumentError
    	end
    	if price>0
    		@price = price
    	else
    		raise ArgumentError
    	end
    end
    def price_as_string()
    	return "$" + "%.2f" %price
    end

    attr_accessor :isbn
    attr_accessor :price

end
