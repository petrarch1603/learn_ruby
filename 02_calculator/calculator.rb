def add(a, b)
	return a + b
end

def subtract(a, b)
	return a - b
end

def sum(array)
	array.reduce(0, :+)
end

def multiply(*array)
	array.reduce(1, :*)
end

def power(a, power)
	return a**power
end

def factorial(num)
	result = 1
	while num > 0
		result = num * result
		num = num - 1
	end
	return result
end