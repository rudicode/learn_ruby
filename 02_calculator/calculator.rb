def add(a,b)
  a + b
end

def subtract a, b
  a - b
end

def sum array
  result = 0
  array.map { |num| result += num  }
  result
end

def multiply a, b
  a * b
end

def factorial num
  return 1 if num <= 1

  result = 1
  (1..num).each do |n|
    result *= n
  end
  
  result
end