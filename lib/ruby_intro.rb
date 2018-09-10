# When done, submit this entire file to the autograder.

# Part 1

#Takes an array as input and returns the sum of the items as output
def sum arr
 result = 0
  #Iterate through the length of the array to find the sum of the array elements
  if arr.length > 0 then
    arr.each do |index|
	result += index
    end
  end
 return result
end

#Takes an array as input and returns the sum of the two largest elements
def max_2_sum arr
  #If the array is empty return 0
  if arr.length == 0 then
	return 0
  end
  #If the array has only one element return that element
  if arr.length == 1 then 
        return arr[0]
  end
  #Sorts the array in increasing order to return the sum of the last two elements.
  return arr.sort.last(2).sum
end

#Takes an array of integers and an integer as inputs and checks if the sum of two elements equals n.
def sum_to_n? arr, n
  len = arr.length

  #Returns false when the length of the array is 0.
  if len == 0 then
     return false
  end
  #Iterates through the array to find the first index
  i = 0
  while i < len-1 do
    #Iterate through the rest of the elements of the array
    j = i+1
    while j <= len-1 do
      if arr[i]+arr[j] == n then
        return true
      end
      j+=1
    end
    i+=1
  end
  return false
end

# Part 2

#Takes a string as input that needs to be appended and returned as output
def hello(name)
  return "Hello, "+name
end

#Takes a string as input and returns true if it starts with a consonant
def starts_with_consonant? s
  #Uses regular expression to check if the string starts with a consonant
  if /\A(?=[^aeiou])(?=[a-z])/i.match(s)!=nil then
     return true
  end
  return false
end

#Returns true if the input string is binary and a multiple of 4.
def binary_multiple_of_4? s
  #If the string is 0 return true
  if s.length == 1 && s == '0'
     return true
  end
  #Uses regular expression to make sure that the string is made of 0 or 1 and ends with 00. As every multiple of 4 ends with 00.
  if /\A[01]*00\z/.match(s)!=nil then
     return true
  end
return false
end

# Part 3

#BookInStock class with attributes isbn, price. Also contains corresponding getters and setters.
class BookInStock
 attr_reader :isbn, :price
 
 #Setter for isbn
 def isbn=(isbn)               
    @isbn = isbn
  end
 #Setter for price
 def price=(price)
   @price = price
 end
 
 #Constructor to initialize isbn and price values.
 def initialize(isbn, price)
  raise ArgumentError.new("Not valid number") if price <=0 
  raise ArgumentError.new("Not valid ISBN") if isbn.length == 0
  @isbn = isbn
  @price = price
 end

 #Converts the integer value of price to a string and appends '$' to the start and decimal point upto two floating points
 def price_as_string()
   @price = '%.2f' % (@price)
   return "$"+@price.to_s 
 end 
end
