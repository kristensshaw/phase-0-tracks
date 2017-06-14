# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # create a method that takes a item and quantity as arguments.
  # In the method create an empty array of list the grocery list.
  # Shovel the item into the empty grocery list array with a space.
  # Print the final list
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]
# Create an empty hash
# Iterate through the list and add each item to the empty hash.



def create_list(grocery_list, item)
	grocery_list[item] = []
end
grocery_list = {}

list = "carrots apples cereal pizza"
# new_list = list.split(' ')
new_list = list.split(' ')

new_list.each do |item|
	create_list(grocery_list, item)
end
p grocery_list
# create_list(grocery_list, "beer")
# p grocery_list
 
# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
# Create a method that takes an inputted item and shovels into new hash to add to grocery list.
# output:
# An updated version of the grocery list with added items listed.

def add_item(grocery_list, item, qty)
	grocery_list[item] = qty
end

add_item(grocery_list, "Ribs", 5)
add_item(grocery_list, "Beer", 2)
add_item(grocery_list, "Tomatoes", 3)
add_item(grocery_list, "Lemonade", 2)
add_item(grocery_list, "Onions", 1)
add_item(grocery_list, "Ice Cream", 4)
p grocery_list

# already incorporated adding functionality to the first method.



# Method to remove an item from the list
# input: The hash and item name to be removed.
# steps:
# Use built-in method delete or delete_if to remove item from the list.
# output:
# An updated version of the grocery list without items that were removed.

def remove_item(grocery_list, item)
	grocery_list.delete(item)
end

remove_item(grocery_list, "Lemonade")
p grocery_list

# Method to update the quantity of an item
# input: The hash item and quantity to be updated.
# steps:
# Pass in a value to change the item quantity.
# output:
# An updated version of the grocery list with a updated key value.
def update_qty(grocery_list, item, qty)
	grocery_list[item] = qty
end
update_qty(grocery_list, "Ice Cream", 1)
update_qty(grocery_list, "carrots", 3)
update_qty(grocery_list, "apples", 6)
update_qty(grocery_list, "cereal", 2)
update_qty(grocery_list, "pizza", 1)

p grocery_list
# grocery_list.each do |item, quantity|
# puts "we need #{quantity} #{item}"
# end

# Method to print a list and make it look pretty
# input:
# The updated grocery list.
# steps:
# Print hash: item_name : Qty
# output:
# A pretty readable version of the grocery list.

def pretty_list(grocery_list)
	puts "********************"
	grocery_list.each do |item, qty|
		puts "#{item}: qty:#{qty}"
	end
		puts "*******************"
end
pretty_list(grocery_list)