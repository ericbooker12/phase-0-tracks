class TodoList
	attr_accessor :array

	def initialize(array)
		@array = array
		
	end

	def get_items
		@array
		# p @array
	end

	def add_item(item)
		@array << item
	end

	def delete_item(item)
		@array.delete(item)
	end

	def get_item(i)
		@array = @array[i]
	end
end

list = TodoList.new(["do the dishes", "mow the lawn"])


list.add_item("mop")
list.delete_item("do the dishes")
list.get_item(0)

list.get_items
