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

def update(list, item, quantity)
  list[item] = quantity
  list
end

p update(grocery_list, "carrots", 2)

def print_list(list)
  list.each do |item, quantity|
    puts "#{quantity}: #{item}"
  end
end

p print_list(grocery_list)

# Release 2

p add_item(grocery_list, "lemonade", 2)
p add_item(grocery_list, "tomatoes", 3)
p add_item(grocery_list, "onions", 1)
p add_item(grocery_list, "ice cream", 4)

p remove_item(grocery_list, "lemonade")

p update(grocery_list, "ice cream", 1)

p print_list(grocery_list)

# Reflection
=begin
1. I learned that I need to learn how to pseudocode better. Most of the time my pseudocode doesn't translate into good coding practices.
2. Arrays are easier to use, but if you have pairs of information, it's hard to read the output and put those two pieces of information together. Hashes are harder to use, but their output is so much easier to read and understand.
3. A method returns whatever is in its body
4. You can pass strings, integers, booleans, other methods, and more
5. You can create a variable and set it equal to that method and its parameters if it has any
6. I finally understand how to use elements of methods outside of their boundaries, which has been something that has stood in the way of my understanding methods. I'm still confused about iterating over certain elements and replacing pieces of information, such as letters.

=end
