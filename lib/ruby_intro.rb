# When done, submit this entire file to the autograder.

# Part 1
arr = Array[8,-5,-1]
def sum arr
  # YOUR CODE HERE
  nums = 0
  arr.each{|i| nums += i }
  return nums
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.size ==0
    return 0
    elsif arr.size ==1
    return arr.at(0)
    else 
  a=arr.sort
  max1 = a.at(a.size-1)
  max2 = a.at(a.size-2)
  return max2+max1
  end
end
 
def sum_to_n? arr, n
  # YOUR CODE HERE
  i = 0
while i<arr.size-1
 	j=i+1
    while j<arr.size
    if arr[i]+arr[j]==n
      return true
    end
      j +=1
    end
  i +=1
end
return false
end

# Part 2
def hello(name)
  # YOUR CODE HERE
  str = "hello,"+name
  return str
end

def starts_with_consonant? s
	if s[0,1] =~/[aeiouAEIOU]/
		return false
	end
	return true
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
def initialize isbn,price
  @isbn = isbn
  @price = price
end
def price_to_string s
end
end
