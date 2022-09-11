
# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR cODE HERE
  res = 0
  for i in arr do
    res = res + i
  end
  return res
end

def max_2_sum(arr)
  len = arr.length
  return 0 if len == 0
  return arr[0] if len == 1
  arr.sort!
  return arr[len-1] + arr[len-2]# YOUR CODE HERE
end

def sum_to_n?(arr, number)
  return false if arr.length < 1
  hashtable = Hash.new(0)
  arr.each do |element|
    if hashtable.key?element
      return true
    else
      hashtable[number-element] = element
    end
  end
  return false# YOUR CODE HERE
end

# Part 2

def hello(name)
  return "Hello, " + name # YOUR CODE HERE
end

def starts_with_consonant?(string)
  !!(string =~ /\A(?=[^aeiou])(?=[a-z])/i)# YOUR CODE HERE
end

def binary_multiple_of_4?(string)
  return false if string.length == 0 || string.match(/[^ 01]/);
  string.to_i%4==0
end

# Part 3

# Object representing a book
class BookInStock
 
  #constructor
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    throw "ArgumentError" if( isbn.length == 0 || price <= 0)
  end
 
  #getters
  def isbn
    @isbn
  end
 
  def price
    @price
  end
 
  #setters
  def isbn=(isbn)
    @isbn = isbn
  end
  def price=(price)
    @price = price
  end
  # YOUR CODE HERE
  def price_as_string
    return "$" + "#{'%.2f' %@price}"
  end
end