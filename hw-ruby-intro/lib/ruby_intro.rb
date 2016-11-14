# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if arr.length == 0
   return 0 
 else
   sum = 0
   arr.each { |item| sum += item}
   sum
  end
end

def max_2_sum arr
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    arr.sort!
    arr.reverse!
    return arr[0] + arr[1]
  end
end

def sum_to_n? arr, n
  if arr.length == 0 || arr.length == 1
    return false
  else
    arr.each {|element| arr.each {|ele| if ele + element == n && ele != element then return true end}}
    return false
  end 
end

# Part 2

def hello(name)
  "Hello, " +  name
end


def starts_with_consonant? s
  if s.length == 0
    false
  elsif "bcdfghjklmnpqrstvwxyz".include? s[0].downcase
    true
  else
    false
  end
end

def binary_multiple_of_4? s
  if s.count('01') != s.size || s.length == 0
    false
  elsif (s.to_i(2) % 4) == 0
    true
  else
    false
  end 
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  def initialize (isbn, price)
    unless isbn.size > 0
      raise ArgumentError.new("Enter a non-empty isbn number.")
    end
    unless price > 0
      raise ArgumentError.new("Enter a non-zero price.")
    end
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    if @price % 1 == 0
      return "$" + @price.to_s + ".00"
    elsif (@price * 10) % 1 == 0
      return "$" + @price.to_s + "0"
    else 
      return "$" + @price.to_s
    end

  end
end

# References
# http://stackoverflow.com/questions/32536143/check-if-string-has-only-0-and-1
# https://newcircle.com/bookshelf/ruby_tutorial/classes
# http://stackoverflow.com/questions/10668415/how-do-i-find-the-index-of-a-character-in-a-string-in-ruby
# http://stackoverflow.com/questions/16087514/how-to-check-if-number-has-a-decimal