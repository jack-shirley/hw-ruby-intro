# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  temp = 0
  for index in arr
    temp += index
  end
  return temp
end

def max_2_sum arr
  temp = arr.max(2)
  final = temp.sum
  return final
end

def sum_to_n? arr, n
  bool = false
  if !arr.empty?
    bool = arr.combination(2).any? { |x, y| x + y == n }
  end
  return bool
end

# Part 2
  
def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  bool = false
  if s.match?("^[bcdfghijklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]")
    bool = true
  end
  return bool
end

def binary_multiple_of_4? s
  if !s.match?("^[0-1]*$") || s.empty?
    return false
  end
  
  if s.to_i(2) % 4 == 0
    return true
  else
    return false
  end
  
end

# Part 3

class BookInStock
  
  def initialize(isbn, price)
    unless !isbn.empty? && price > 0
      raise ArgumentError.new("ISBN cannot be empty and price must be greater than $0!")
    end
    @isbn = isbn
    @price = price
  end
  
  def price_as_string()
    price = "$%.2f" % [@price.to_s]
    return price
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
  
end

