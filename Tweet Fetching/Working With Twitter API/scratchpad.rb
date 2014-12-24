def recursive_factorial(6)
	return 1 if number < 1

	recursive_factorial(6 -1) * 6 #came in 120.. 120 * 6 => return  720
	
end

def recursive_factorial(5)
	return 1 if number < 1

	recursive_factorial(5 -1) * 5 #came in 24.. 24 * 5 => return 120
	
end

def recursive_factorial(4)
	return 1 if number < 1

	recursive_factorial(4 -1) * 4 #came in 6.. 6 * 4 => return 24
	
end

def recursive_factorial(3)
	return 1 if number < 1

	recursive_factorial(3 -1) * 3 #came in 2.. 2 * 3 => return 6
	
end

def recursive_factorial(2)
	return 1 if number < 1

	recursive_factorial(2 -1) * 2 #came in 1... 1 * 2 => return 2
	
end

def recursive_factorial(1)
	return 1 if number < 1

	recursive_factorial(1 -1) * 1 #came in 1 => 1 *1 => return 1
	
end

def recursive_factorial(0)
	return 1 if number < 1 #BREAK! RETURN 1

	recursive_factorial(number -1) * number
	
end






0 + 1 + 1 + 2 + 3





















