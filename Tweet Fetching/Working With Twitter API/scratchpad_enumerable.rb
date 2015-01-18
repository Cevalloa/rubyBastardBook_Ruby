
def sortedlist(array,reverse = false)

	if reverse == false
		array.sort {|a,b| a <=> b}  #Outputs regular
	else
		array.sort {|a,b| b <=> a}  #Outputs in reverse order (array)
	end
end

#<=> operator
#if left is bigger, returns 1
#if right is bigger, returns -1
#if both same, returns 0

disney_movies = ["Lion King", "Little Mermaid", "Lady and the Tramp", "Finding Nemo", "Toy Story", "Tangled"]

puts "In reverse order: #{sortedlist(disney_movies, true)}"

puts "In proper order: #{sortedlist(disney_movies)}"