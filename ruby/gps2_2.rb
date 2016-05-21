
# gps 2.2
# coder pad https://coderpad.io/WHCEDWME

 
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza") <---- wow look at this!
# steps: 
  # split string by spaces and turn into array
  # create a hash - each item is a key and quantity is a value add item to list
  # set default quantity, quantity = 1
  # print the list to the console [can you use one of your other methods here?]
# output: hash

def create_list(input_string)
  grocery_list = {}
  items = input_string.split(' ')
  items.each do |item|
    add_item_to_list(grocery_list, item, 1)
  end

  add_item_to_list(grocery_list, "milk", 1)
  update_item_from_list(grocery_list, "Lemonade", 2)
  update_item_from_list(grocery_list, "Tomatoes", 3)
  update_item_from_list(grocery_list, "Onions", 10)
  update_item_from_list(grocery_list, "iceCream", 20)

  print_list(grocery_list)
end
  
# Method to add an item to a list
# input: item name and optional quantity and hash 
# steps: if item does not exist add item name as key to hash with qty 1 as value
# output: hash with quantity
  
def add_item_to_list(hash, item_to_add, qty)
  hash[item_to_add] = qty
end

# Method to remove an item from the list
# input: hash, item to remove
# steps: if item exists then remove it
# output: hash with item removed

def remove_item_from_list(hash, item_to_remove)
  if hash.has_key?(item_to_remove)
    hash.delete(item_to_remove)
  else
    "It looks like #{item_to_remove} wasn't in the hash after all!"
  end
end

# Method to update the quantity of an item
# input: hash, item name, updated quantity
# steps: if item exists update the value with updated qty
# output: hash with updated qty

def update_item_from_list(hash, item_to_update, new_qty)
  if hash.has_key?(item_to_update)
    hash[item_to_update] = new_qty
  else
    "It looks like #{item_to_update} wasn't in the hash after all!"
  end
end   

# Method to print a list and make it look pretty
# input: hash
# steps: print a header "key: value"
  # iterate through hash and print key and value sepaerated by a colon line by line
# output: prettyfied hash is printed to screen

def print_list(hash)
  hash.each do |item, qty|
    puts "#{item}: #{qty}\n"
  end
end

create_list('Lemonade Tomatoes Onions iceCream')
