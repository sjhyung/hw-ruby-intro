# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arrsum = 0
  arr.each {|num_ele| arrsum += num_ele}
  return arrsum
end

def max_2_sum arr
  # YOUR CODE HERE   
    return 0 if arr.length == 0 
    return arr[0] if arr.length == 1 
    sorted_arr = arr.sort
    return sorted_arr[-1]+sorted_arr[-2]
end

def sum_to_n? arr, n
  # YOUR CODE HERE
   return false if arr.length  <=2
   return arr.combination(2).any? {|a, b| a + b == n }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s == ''
    return false
  end
  if /^[AEIOU\W]/i.match(s) == nil
  return true
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
     if s.length == 0
      return false
     end
   if s.scan(/\D/).empty? ==false
     return false
   end
   if(s.to_i%4==0)
     return true
   end
   return false
end

# Part 3

class BookInStock
  # YOUR CODE HERE
  attr_reader :isbn, :price
  attr_writer :isbn, :price
 def initialize(isbn,price)
   if isbn == '' || price <=0
     raise ArgumentError
   end
   @isbn = isbn
   @price = price
 end
 
 def price_as_string
   return format("$%.2f", @price)
 end
end
