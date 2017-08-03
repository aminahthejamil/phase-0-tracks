# The Magical Grocery List

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # 1. Use .split(' ') to put the string into the hash
  # 2. Iterate over the hash and store the values of the keys and the values
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: Hash output

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
  # 1. Use hash from previous method
  # 2. Ex. hash_name[key_food] = [quantity_input]
# output: Hash output with new item(s)

# Method to remove an item from the list
# input: list, item name
# steps:
  # 1. Delete key from hash
  # 2. use hash.delete
# output: Hash without deleted item(s)

# Method to update the quantity of an item
# input: List, item name, and new quanitity
# steps:
  # 1. Replace value of the item key
# output: Hash with updated quantity value

# Method to print a list and make it look pretty
# input: list
# steps:
  # 1. Iterate over the list
  # 2. Print keys and values
# output: The list in sentences like, "We want this many #{quanitity_value} of this #{food_key}" item"

#Method to create a list
def create_list(array)
  array = array.split(' ')
  grocery_list = {}

  array.each do |item|
    grocery_list[item] = "0"
  end
  p grocery_list
end

p grocery_list = create_list("carrots apples pizza cereal berries")

def add_item(list, new_item, quantity)
  list[new_item] = quantity
  list
end

p add_item(grocery_list, "berries", 3)
p add_item(grocery_list, "milk", 3)

def remove_item(list, item)
  list.delete(item)
  list
end

p remove_item(grocery_list, "milk")

def update
end

def print_list
end
