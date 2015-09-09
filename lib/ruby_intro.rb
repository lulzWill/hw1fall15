# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0) {|sum,x| x + sum}
end

def max_2_sum arr
  arr.max(2).inject(0) {|sum,x| x + sum}
end

def sum_to_n? arr, n
  !!arr.combination(2).detect{|x,y| n == x + y}
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  s.match(/\A[^aeiou\W].*\z/i) ? true : false
end

def binary_multiple_of_4? s
  s.match(/\A([10]*00|0)\z/) ? true : false
end
# Part 3

class BookInStock
  def initialize(isbn, price)
    unless !isbn.empty?
      raise ArgumentError.new("ISBN cannot be empty")
    end
    unless price > 0
      raise ArgumentError.new("Price cannot be less than zero")
    end
    
    @isbn = isbn
    @price = price
  end
  
  def isbn=(x)
    unless !x.empty?
      raise ArgumentError.new("ISBN cannot be empty")
    end
    @isbn = x
  end
  
  def isbn
    @isbn
  end
  
  def price=(x)
    unless x > 0
      raise ArgumentError.new("Price cannot be less than zero")
    end
    @price = x
  end
  
  def price
    @price
  end
  
  def price_as_string
    "$%.2f" % @price
  end
end
