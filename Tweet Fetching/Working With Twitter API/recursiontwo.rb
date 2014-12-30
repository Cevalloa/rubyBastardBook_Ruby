#binary search, simple implementation
def binary_search(arra, key)
	
	mid = arra.length/2

	if arra[mid] == key
		return "found"
	elsif arra.length == 1 && arra[0] != key
		return "not found"
	else

		if arra[mid] < key
			binary_search(arra[mid+1...arra.length], key)
		elsif arra[mid] > key
			binary_search(arra[0...mid], key)
		end

	end


end

puts binary_search([1,2,3,4,5,6,7,8], 10)

#simple bubble sort implementation
def bubble_sort(unsorted_array)

end