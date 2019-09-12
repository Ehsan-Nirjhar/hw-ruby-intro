# When done, submit this entire file to the autograder.

# Part 1

def sum(array)
  # YOUR CODE HERE
  val = 0
  
  array.each do |num|  
    val += num
  end
  
  return val
end

def max_2_sum(array)
  # YOUR CODE HERE
  new_arr = array.sort.reverse ### sorted and reversed
  if new_arr.length == 0
    return 0
  elsif new_arr.length == 1
    return new_arr[0]
  else
    return new_arr[0] + new_arr[1] ### reverse sorted array's 1st 2 elements
  end
  
end

def sum_to_n?(array, n)
  # YOUR CODE HERE
  for i in 0...(array.length - 1)
    for j in (i+1)...array.length
      if array[i] + array[j] == n
        return true
      end
    end
  end
  
  return false
  
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant?(s)
  # YOUR CODE HERE
  if s =~ /\A[a-z]/i and s =~ /\A[^aeiou]/i
    return true
  else
    return false
  end
    
end

def binary_multiple_of_4?(s)
  # YOUR CODE HERE
  if s =~ /^[0-9]*00$/ or s =~ /^0+$/ ### If s is a string of 0s
    return true
  else
    return false
  end
end

# Part 3

class BookInStock 
# YOUR CODE HERE
  def initialize(isbn, price)
    raise ArgumentError, 'Not a valid price' if price <= 0 || isbn.length == 0 
    @isbn = isbn
    @price = price
  end
  
  def isbn  #getter
    @isbn
  end
  
  def price  #getter
    @price
  end
  
  def isbn=(isbn) #setter 
    @isbn = isbn
  end
  
  def price=(price) #setter 
    @price = price
    

  end
  
  def price_as_string
    return format("$%.2f", @price)
    
  end
  

end
