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

array = [1,2,3]
puts array[0..(array.length/(2-1))]


#recursive function that flattens an array
def flattenor(array, result = [])
	array.each do |element|
		if element.kind_of? Array
			flattenor(element, result)
		else
			result << element
		end
	end
	result

end

puts flattenor([[1, 2], [3, 4]])

#add to array if there is one item
#each element of array, see if it is an array
# if it is an array, run the flattenor, pass the "value" with result array

def non_recursive(array)
larger_array = []

array.each do |arrayo|
	arrayo.each do |item|
		larger_array << item
	end
	end
end

#roman_mapping hash
def map_hash(mod, result)
	roman_mapping = {
  1000 => "M",
  900 => "CM",
  500 => "D",
  400 => "CD",
  100 => "C",
  90 => "XC",
  50 => "L",
  40 => "XL",
  10 => "X",
  9 => "IX",
  5 => "V",
  4 => "IV",
  1 => "I"
}
	roman_mapping.each_key do |key|

	quotient, mod = result.divmod(key)

		if quotient > 0
			result += roman_hash[key] * quotient
			map_hash(mod, result)
		else
			return result
		end	

end

end

#roman numeral to an integer
# def roman_toI(str, result =0)
# 	roman_mapping = {
#   "M" => 1000,
#   "CM" => 900,
#   "D" => 500,
#   "CD" => 400,
#   "C" => 100,
#   "XC" => 90,
#   "L" => 50,
#   "XL" => 40,
#   "X" => 10,
#   "IX" => 9,
#   "V" => 5,
#   "IV" => 4,
#   "I" => 1
# }
# 	return result if str.empty?
# 	roman_mapping.each_key do |roman|
# 		if str.start_with?(roman)
# 			result += roman_mapping[roman]
# 			str = str.slice(roman.length, str.length)
# 			return roman_to_integer(str, result)
# 		end
# 	end
# end

#for every item in the array, is the array length
#Only divisible by itself and 1

def prime(num)
count = 0

	for l in (1..num)
		if num % l == 0 
			count += 1
		end
	end

	return true if count == 2

end
puts prime(1668)

def prime_Again(numo)

	for l in (2...numo)
		if numo % l == 0
			return "false"
		end
	end

	return "true"
end

puts prime_Again(1668)

puts "-" * 40

#fibonacci sequence  with iteration
def fibs(add_upto)
	if add_upto < 2
		return add_upto
	end


	array_to_return = []
	for l in (0..add_upto)
		if l < 2
			array_to_return << l
		else
		array_to_return[l] = (array_to_return[l-2] + array_to_return[l-1])
	end
	end
	array_to_return
end

puts fibs(5)

#alternate fibonacci equence with iteration 
def fibsTwo(num)
	curr = 0 #stores current array index
	next_num = 1  #stores next value up
	temp = 0 #stores last two combined
	while (num -= 1) > 0 do
		temp = curr + next_num #adds the current array index & next value
		curr = next_num	#moves index to right 
		next_num = temp	#stores the added two values to the next number

		end
	return next_num
end

#recursive method



































