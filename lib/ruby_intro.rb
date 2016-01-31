# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if arr.length == 0
    return 0
  else 
    return arr.reduce(:+)
  end
end

def max_2_sum arr
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    return arr.sort.last(2).reduce(:+)
  end
end

def sum_to_n? arr, n
  if arr.length == 0 || arr.length == 1
    return false
  else
    return arr.permutation(2).any? { |a, b| a + b == n }
  end 
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if s.length == 0 || !s[0].match(/[bcdfghjklmnpqrstvwxyz]/i) 
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  if s =~ /^[0-1]+$/
    return s.to_i(2) % 4 == 0
  end
  return false
end

# Part 3

class BookInStock
  
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)  
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn  
    @price = price  
  end 
  
  def price_as_string()
    format("$%.2f", @price)
  end
end