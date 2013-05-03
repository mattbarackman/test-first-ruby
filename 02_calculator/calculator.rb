def add(x, y)
  x+y
end

def subtract(x, y)
  x-y
end

def sum(array)
  sum = 0
  array.each do |x|
    sum += x
  end
  sum
end

def multiply(num1, *nums)
  product = num1
  nums.each do |x|
    product *= x
  end
  product
end

def power(base, exp)
  base**exp
end

def factorial(num)
  product = 1
  while num >= 1
    product *= num
    num -= 1
  end
  product
end