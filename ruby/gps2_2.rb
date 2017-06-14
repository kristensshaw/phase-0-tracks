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

def create_list(items)
	grocery_items = {}
	# new_items = items.split(' ')
	# new_items.each do |item|
	items.split(" ").each do |item|
		grocery_items[item] = 1
	end
	# p grocery_items
	pretty_list(grocery_items)
	return grocery_items
end


# def create_list(grocery_list, item)
# 	grocery_list[item] = []
# end

# new_list.each do |item|
# 	create_list(grocery_list, item)
# end
# p grocery_list

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

# add_item(grocery_list, "Ribs", 5)
# add_item(grocery_list, "Beer", 2)
# add_item(grocery_list, "Tomatoes", 3)
# add_item(grocery_list, "Lemonade", 2)
# add_item(grocery_list, "Onions", 1)
# add_item(grocery_list, "Ice Cream", 4)
# p grocery_list

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

# remove_item(grocery_list, "Lemonade")
# p grocery_list

# Method to update the quantity of an item
# input: The hash item and quantity to be updated.
# steps:
# Pass in a value to change the item quantity.
# output:
# An updated version of the grocery list with a updated key value.
def update_qty(grocery_list, item, qty)
	grocery_list[item] = qty
end

# update_qty(grocery_list, "Ice Cream", 1)
# update_qty(grocery_list, "carrots", 3)
# update_qty(grocery_list, "apples", 6)
# update_qty(grocery_list, "cereal", 2)
# update_qty(grocery_list, "pizza", 1)

# p grocery_list
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

grocery_list = create_list("carrots apples cereal pizza")

add_item(grocery_list, "Ribs", 5)
add_item(grocery_list, "Beer", 2)
add_item(grocery_list, "Tomatoes", 3)
add_item(grocery_list, "Lemonade", 2)
add_item(grocery_list, "Onions", 1)
add_item(grocery_list, "Ice Cream", 4)

remove_item(grocery_list, "Lemonade")

update_qty(grocery_list, "Ice Cream", 1)
update_qty(grocery_list, "carrots", 3)
update_qty(grocery_list, "apples", 6)
update_qty(grocery_list, "cereal", 2)
update_qty(grocery_list, "pizza", 1)

pretty_list(grocery_list)

# On your own, add a commented reflection section to your gps2_2.rb file. Answer the following questions in your reflection:

# What did you learn about pseudocode from working on this challenge?
	# I learned that writing out the pseudocodeis important to do because you can brain dump rough ideas to see your ideas on paper after you talk to your pair or the rubber ducky. Then onece the ideas on down, you can organize them as necessary and they provide rough checkpoints to keep you on track
# What are the tradeoffs of using arrays and hashes for this challenge?
	# We chose hashes because it allows us to assign a quantity to a key in this case item in list. 
# What does a method return?
	# The method returns the output of the arguments after the input is submitted
# What kind of things can you pass into methods as arguments?
	# You van pass values or strings or keys that are linked to hashes etc
# How can you pass information between methods?
	# as long as you pass the called method and the input in the other method.
# What concepts were solidified in this challenge, and what concepts are still confusing?
	# The use of using methods separately instead of lumping a lot of things that do things together which will inevitable and then the idea of checking and testing code as you go. good exercise. 