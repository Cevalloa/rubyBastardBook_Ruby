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


def merge(left, right) #merges two sorted arrays together from lowest to highest
	result = [] #end result array
	while left.size > 0 and right.size > 0 #while the left and right array are over 0
		if left[0] <= right[0]	#if the first left is less than the first right
			result << left[0]	#then add the first left array to the result
			left = left[1..-1]	# reduce the size of the left array..start it at the second and keep the last value
		else
			result << right[0]   #the right is bigger, so move the right to the result
			right = right[1..-1]	#decrease the size of the right, start it at the second value and keep the last value
		end
	end  #ends when one of the arrays is not bigger than 0

	if left.size > 0   #if the left one still has objects within it..
		result.concat left	#add the rest of the left array onto the result
	end
	if right.size > 0	#if the right one still has objects within it..
		result.concat right	#add the rest of the objects to the result
	end

	return result

end

def merge_sort(arr) #breaks them down, then calls merge to merge them together
	left, right, result = [] #create 3 arrays

	#if the array is less than or equal to 1, return it.. or else keep breaking!
	if arr.size <= 1 #if the array size is less than 1, return array
		return arr
	else
		middle = arr.size/2 #find middle spot of array
		left = arr[0..middle - 1] #split left array, 0 to middle minus one
		right = arr[middle..-1] #split right array, middle to last

		left = merge_sort(left) # now call same method on left array
		right = merge_sort(right) #now call same method on right array

		#once they are back from merge sort..
		if left.last <= right [0] 
			left.concat right
			return left
		end
		result = merge(left, right)
		return result

	end
	
end

#fiddling with binary search tree
class Node

	attr_accessor :value, :parent, :left_child, :right_child

	#initialize the node
	def initialize(value, parent = nil, left_child =nil, right_child=nil)
		@value = value
		@parent = parent
		@left_child = left_child
		@right_child = right_child
	end

end

class BST

	def initialize(root_data = nil)
		@root = Node.new(root_data) unless root_data.nil?   #set the root if one is passed in
	end

	def BST.build_tree data_array  #creates the tree
		bst = BST.new #create a new instance of a binary search tree
		data_array.each{|data| bst.add(data)}  #add each item to data array
		return bst  #return the binary search tree
	end

	def add node_data #adds the node, sets the root if non existant
		if @root.nil?
			@root = Node.new(node_data) #create instance of node, set to root
		else							# if there already is a root
			add_to_bst(Node.new(node_data), root)  #send in data & highest node
		end

	end

	def add_to_bst(node, ancestor)
		return node if ancestor.nil?   #if the ancestor is empty, return node

		node.parent = ancestor   #now this node's parent is the ancestor
		if node.value < ancestor.value   
			ancestor.left_child = add_to_bst(node, ancestor.left_child)
		else
			ancestor.right_child = add_to_bst(node, ancestor.right_child)
		end

		ancestor

	end

end

#Merge sort
#keep splitting until one
#then keep merging them sorted
def merge_again(arr1, arr2)
	final_array = []
	while(arr1.size > 0 && arr2.size > 0)
		if arr1[0] < arr2[0]
			final_array << arr1[0]
			arr1 = arr1[1...arr1.length]
		else
			final_array << arr2[0]
			arr2 = arr2[1...arr2.length]
		end

	end

	if arr1.length == 0
		final_array.concat arr2
	elsif arr2.length == 0
		final_array.concat arr1
	end

	final_array
end

def merge_sort_again(unsorted_arr)
	return unsorted_arr if unsorted_arr.length == 1

	mid = unsorted_arr.length/2

	left = merge_sort_again(unsorted_arr[0...mid])
	right = merge_sort_again(unsorted_arr[mid..-1])

	merge_again(left,right)

end


#reiteration of binary search tree
class Node_again

	attr_accessor :value, :parent, :left_child, :right_child

	def initialize(value, parent=nil, left_child=nil, right_child=nil)
		@value = value
		@parent = parent
		@left_child = left_child
		@right_child
	end

end

class BST_again

	attr_accessor :root


	def initialize(noder = nil)
		if noder != nil
			@root = noder
		end
	end

	def create_tree(arr1)
		BST2 = BST_again.new
		arr1.each {|data| BST2.add(data)}
		BST2
	end

	def add(node_data)
		if @root == nil
			@root.value = Node_again.new(node_data)
		else
			add_helper(Node_again.new(node_data), root)
		end
	end

	def add_helper(noder, ancestor)

		return noder if ancestor.nil?

	noder.parent = ancestor

	if noder.value < ancestor.value
		ancestor.left_child = add_helper(noder, ancestor.left_child)
	elsif noder.value > ancestor.value
		ancestor.right_child = add_helper(noder, ancestor.right_child)
	end
		
	ancestor


	end

















	def initialize(noder = nil)
		if noder != nil
			@root = noder
		end
	end

	def bst_deez_digits(arr1)
		BST_again_again = BST_again.new

		arr1.each {|data| BST_again_again.add(data)}

		BST_again_again
	end

	def add(noder_data) #checks if root is set.. if not


	end


end





















