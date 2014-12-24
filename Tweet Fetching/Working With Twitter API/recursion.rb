def append(ary, n)
	return ary if n < 0 
	ary << n
	append(ary, n - 1)
end

returnd = append([], 3)
puts returnd.to_s

#3 added
# append runs, 2 added

#add first element to array
#minus element, add that to array
#keep minusing until below 0

#start at 0
#add number to 0
#stop number hits n

def reverse_append(ary, n)
	return ary if n < 0

	reverse_append(ary, n-1)
	ary << n
	ary
end

# define a recursive function that finds the factorial of a number
#Multiply highest number with second highest number
#keep multiplying until one is reached
def recursive_factorial(number)
	return 1 if number < 1

	recursive_factorial(number -1) * number
	
end

puts recursive_factorial(6)



# (5) * 6 -> 720
# (4) * 5 -> 120
# (3) * 4 -> 24
# (2) * 3 -> 6
# (1) * 2 -> 2
# (1) * 1 -> 1

#define a recursive palindrome

puts "racecar"[1..-2]

def palindrome(word)
	if word.length == 0 || word.length == 1
		return true
	end

	if word[0] == word[-1]
		palindrome(word[1..-2])
	else
		return false
	end


end

puts palindrome("racecar")
puts palindrome("asdkj")


#prints n bottles on the wall, until no more bottles of beer on the wall

def bottles(number)
	return "No more bottles of beer on the wall" if number == 0

	puts "#{number} bottles of beer on the wall"
	bottles(number -1)

end

puts bottles(5)


#fibonacci value of that position
#add first number to second number, set as third number
def fibonacci(value)
	if value == 0
		return 0
	elsif value == 1
		return 1
	else
		fibonacci(n-1) + fibonacci(n-2)
	end

end

#recursion goes calculates it down.. once it hits a "return" it starts bringing the return values up

#recursive function that flattens an array
def flatten(array)

end

def zip(first,second)
	puts first.zip(second).flatten
end

 firsto = ['a', 'c', 'e']
 secondo = ['b', 'd', 'f']
 zip(firsto, secondo)

# first = ['a', 'c', 'e']
# second = ['b', 'd', 'f']
# zip(first, second)
#     #=> ['a', 'b', 'c', 'd', 'e', 'f']

#['a','c','e'].zip(['b', 'd', 'f'].zip())


























