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

#sum_to_n? [-1,-2,3,4,5,-8],12
=begin
# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
end
=end
