def add_to_array(array, value)
	array<<value
end

def build_array(item1, item2, item3)
	array = [item1, item2, item3]
end

array1 = []
p array1
array1 = ["cat", "dog", "mouse", "rabbit", "bird"]
p array1
array1.delete_at(2)
p array1
array1.insert(2, "chowchilla")
p array1
array1.shift
p array1

item_to_check = "chowchilla"
if array1.include?(item_to_check) 
	p "The array inludes #{item_to_check}."
else
	p "The array does not include #{item_to_check}"
end

array2 = ["horse", "hippo", "zebra"]

p array2

array1_and_array2 = array2.concat(array1)
p array1_and_array2

p build_array("monkey", "fox", "coyote")

p add_to_array(array1_and_array2, "jackelope")
p add_to_array(["squirrel", "beaver", "hedgehog"], "unicorn")
p add_to_array(["a", "b", "c"], "xyz")