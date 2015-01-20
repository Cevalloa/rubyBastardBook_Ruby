
# def sortedlist(array,reverse = false)

# 	if reverse == false
# 		array.sort {|a,b| a <=> b}  #Outputs regular
# 	else
# 		array.sort {|a,b| b <=> a}  #Outputs in reverse order (array)
# 	end
# end

# #<=> operator
# #if left is bigger, returns 1
# #if right is bigger, returns -1
# #if both same, returns 0

# disney_movies = ["Lion King", "Little Mermaid", "Lady and the Tramp", "Finding Nemo", "Toy Story", "Tangled"]

# puts "In reverse order: #{sortedlist(disney_movies, true)}"

# puts "In proper order: #{sortedlist(disney_movies)}"

#regular exprssions match data
string = "My phone number is (123) 555-1234"
phone_re = /\((\d{3})\)\s+(\d{3})-(\d{4})/
m = phone_re.match(string)

unless m
	puts "There was no match-sorry"
	exit
end

print "The whole string we started with: "
puts m.string

print "The entire part of the string that matched:"
puts m[0]

puts "The three captures"
3.times do |index|
	puts "Capture #{index + 1}: #{m.captures[index]}"
end

puts "Here's another way to get at the first capture"
print "Capture #1:"
puts m[1]