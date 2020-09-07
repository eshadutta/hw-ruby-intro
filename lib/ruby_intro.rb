# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.max(2).reduce(0, :+)
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.size < 2
    return false
  else
    (0..arr.size-1).each do |i|
      (i+1..arr.size-1).each do |j|
       if arr[i] + arr[j] == n
         return true
       end
      end
    end
    return false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if /^[^aeiou\W]/i.match(s) == nil
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if (s.length==1 and s[0]=='0')
    return true
  elsif (s.match(/^[10]*00$/))
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
attr_accessor :isbn, :price
  def initialize isbn, price
    raise ArgumentError if price <= 0 or isbn.empty?
    @price = price
    @isbn = isbn
  end
  def price_as_string
    format("$%.2f", @price)
  end
end
