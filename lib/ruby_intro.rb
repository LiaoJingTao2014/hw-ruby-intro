# When done, submit this entire file to the autograder.

# Part 1
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
  str = "Hello, "
  str += name.to_s
  return str
end

def starts_with_consonant? s
   if s.empty?      #字符串为空
    return false
  elsif s[0].match(/a|A|e|E|i|I|o|O|u|U|\$|#/)   #字符串以元音字母或“$”或"#"开头，并用正则表达式进行判定
      return false
  else
       return true
end
end

def binary_multiple_of_4? s
   #YOUR CODE HERE
   if s.empty?
    return false
  end
  if s.match(/^[0|1]+$/)    #匹配只有0或1的字符串
          if (Integer("0b#{s}")%4)==0
            return true
          else
            return false
          end
  else 
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
@isbn=""
@price=0
   def isbn=(value)
       @isbn=value
   end
   def price=(value)
      @price=value
   end
   def isbn
     return @isbn
   end
   def price
     return @price
   end
   def initialize(isbn,price)
      @isbn=isbn
      @price=price
      if(@isbn.empty?||@price<=0)
        raise ArgumentError
      end
   end
   def price_as_string
      if @price>0
        @s=format("%.2f",@price)
        return "$"+@s.to_s
      end
   end
end
