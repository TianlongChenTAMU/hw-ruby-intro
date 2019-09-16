# Part 1

def sum arr
  return arr.inject(0){|sum, x| sum + x}
end

def max_2_sum arr
  sarr = arr.sort
  num = sarr.length
  if num == 1
    return arr[0]
  elsif num == 0
    return 0
  else  
  	return sarr[num-1] + sarr[num-2]
  end  
end

def sum_to_n? arr, n
  if arr.empty? && n.zero?
    return false
  else  
    arr.combination(2).any? {|a, b| a + b == n}
  end  
end

# Part 2

def hello(name)
  howdy = "Hello, #{name}"
  return howdy
end

def starts_with_consonant? s
  iniarr = s[0]
  if iniarr == nil
    return false
  elsif iniarr.downcase =~ /[b-df-hj-np-tv-z]/    
    return true
  else
    return false
  end  
end

def binary_multiple_of_4? s
  if (s =~ /[01]/) == 0 and s[s.length-1] == "0" and s[s.length-2] == "0"
      return true
  else  
    return false
  end  
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    raise ArgumentError if  isbn == nil || isbn.length == 0
    raise ArgumentError if price <= 0
    
    @isbn = isbn
    @price = price
  end
  
  attr_accessor :isbn

  def isbn
    @isbn
  end  
  def price
    @price
  end
  def isbn=(isbn)
    @isbn = isbn
  end 
  def price=(price)
    @price = price
  end

  def price_as_string
    "$%0.2f" % @price
  end
end
