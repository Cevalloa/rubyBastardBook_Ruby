def append(ary, n)
	return ary if n < 0
	ary << n
	append(ary, n - 1)
end

returnd = append([], 3)
puts returnd.to_s

#add first element to array
#minus element, add that to array
#keep minusing until below 0
