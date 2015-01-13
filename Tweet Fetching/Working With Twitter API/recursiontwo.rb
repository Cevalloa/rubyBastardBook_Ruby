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

#Node
class Node
	attr_accessor :value, :parent, :left_child, :right_child

	def initialize(value, parent = nil, left_child = nil, right_child = nil)
		@value = value
		@parent = parent
		@left_child = left_child
		@right_child = right_child
	end
end

#Binary Search Tree
class BST
	attr_accessor :root

	# Sets the root of the BST if data for the root is provided
	def initialize(root_data = nil)
		@root = Node.new(root_data) unless root_data.nil?
	end

	#this is a class method that creates the BST with an array passed in
	def BST.build_tree data_array
		bst = BST.new
		data_array.each {|data| bst.add(data)}
		return bst
	end

	#Make the node for the given info, add said node to BST
	def add node_data
		if @root.nil?
			@root = Node.new(node_data)
		else
			add_to_bst(Node.new(node_data), @root)
	end

	#Works with add method to add node to BST
	def add_to_bst(node, ancestor)
		return node if ancestor.nil?   #recursive base case

		node.parent = ancestor   #this node's parent is the one above
		if node.value < ancestor.value   #if the nodes value is less than the ancestor
			ancestor.left_child = add_to_bst(node, ancestor.left_child)   
			#set the left node.. notice it will return itself if the node is empty
			#send in the current node for debate, and the supposed location of the new node
		else
			ancestor.right_child = add_to_bst(node, ancestor.right_child)
			#NOTICE! You don't add it until it finds a spot (Always up for debate)
		end
		ancestor

	end

	#array of values in the BST when the BST is traveresed inorder
	def inorder
		tree_data = []
		tree_data = inorder_traverse(@root, tree_data)
	end

	def inorder_traverse(node, final_array)
		return final_array if node.nil?
		inorder_traverse(node.left_child, final_array)
		final_array << node.value
		inorder_traverse(node.left_child, final_array)
	end

	#print out BST nodes in inorder form
	def inorder_show
		puts "ROOT: #{@root.value}\n"
		inorder_show_helper @root
	end

	#does in order traversal, but with to_s
	def inorder_show_helper node
		return nil if node.nil?

		inorder_show_helper(node.left_child)
		puts node.value.to_s
		inorder_show_helper(node.right_child)
	end

	#Breadth first search example with BST, BFS uses a queue
	def breadth_first_search target
		open_queue = [@root]
		until open_queue.empty? #checks if the queue is empty, if so.. return it
			current = open_queue.shift	#checks the first in line of the queue
			return current if current.value == target	#returns it if it is found!
			open_queue.push current.left_child unless current.left_child.nil?
			open_queue.push current.right_child unless current.right_child.nil?
		end
		nil
	end

	#start the stack
	#keep running until the stack is empty
		#take the top item of the stack
		#return if the top item is the target
		#

	#Depth first search example with BST, DFS uses a stack
	def depth_first_search target
		open_stack = [@root]
		until open_stack.empty?
			current =  open_stack.pop #currently checks the top element in the stack
			return current if current.value == target
			#left off here (unfinished)
			open_stack.pop current.right_child unless current.right_child.nil?
			open_stack.pop current.left_child  unless current.left_child.nil?
		end

		nil

	end

end

#modules classes order
module InterestBearing 
	def calculate_interest
puts "Placeholder! We're in module InterestBearing." end
end
class BankAccount include InterestBearing def calculate_interest
puts "Placeholder! We're in class BankAccount."
puts "And we're overriding the calculate_interest method!" end
end
account = BankAccount.new account.calculate_interest

#goes over super real quick
class Bicycle
attr_reader :gears, :wheels, :seats
def initialize(gears = 1) @wheels = 2
@seats = 1
@gears = gears
end end
class Tandem < Bicycle def initialize(gears)
B
super
@seats = 2 end
end


#simple stack implementation
class Stack
	attr_reader :stack
		def initialize @stack = []
		end
		def add_to_stack(obj) @stack.push(obj)
		end
		def take_from_stack @stack.pop
		end end
		class Suitcase end
			class CargoHold < Stack def load_and_report(obj) print "Loading object "
			puts obj.object_id
			          add_to_stack(obj)
			         end
		def unload take_from_stack
end end

#Simple explaination of "main"
def talk
puts "Hello"
end
puts "Trying 'talk' with no receiver..."
talk
puts "Trying 'talk' with an explicit receiver..." obj = Object.new
obj.talk


