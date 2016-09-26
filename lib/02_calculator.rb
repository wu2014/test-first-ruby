def add(a,b)
  a + b
end	

def subtract(a,b)
  a - b
end	

def sum(arr)
  i = 0
  result = 0
  while i < arr.length
	result += arr[i]
	i += 1
  end	
  result
end	

def multiply(*numbers)
  result = 1
  numbers.each { |n| result = result * n }
  result
end

def power(a,b)
  res = 1
  i = 0
  while i < b
  	res *= a
  	i += 1
  end
  res
end

def factorial(num)
  result = 1
  while num > 0
  	result *= num
  	num -= 1
  end
  result	
end 	
