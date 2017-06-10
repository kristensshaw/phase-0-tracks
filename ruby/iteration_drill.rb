
zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
# ----

zombie_apocalypse_supplies.each do |supply|
	puts "*" + "#{supply}" + "*"
end
#  
# zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
#                               "shotgun", "compass", "CB radio", "batteries"]
# listed_supplies = []

# zombie_apocalypse_supplies.each do |supply|

# 	listed_supplies << supply.join("8")
# end
# puts listed_supplies

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
# ----
# def compare_letter(a, b)
# 	if a < b
# 		-1
# 	elsif a > b
# 		1
# 	else
# 		0
# 	end
# end

# # Compares the given words as one would alphabetize them. As is expected in the English language, letter come before numbers, capital letters are considered equivalent to their lowercase counterparts, and the shorter of two otherwise-equivalent words is considered to come first.
# # returns -1 if word_a is before word_b, 1 if word_a is after word_b, and 0 if the two words are the same
# def compare_word(word_a, word_b)
# 	downcased_word_a = word_a.downcase
# 	downcased_word_b = word_b.downcase
# 	for i in 0..(downcased_word_a.length - 1)
# 		# If word a is shorter than word b
# 		if i >= (downcased_word_b.length - 1)
# 			return 1
# 		end

# 		result = compare_letter(downcased_word_a[i], downcased_word_b[i])
# 		if result < 0
# 			return -1
# 		elsif result > 0
# 			return 1
# 		end
# 	end

# 	# If word a is shorter than word b
# 	if downcased_word_a.length < downcased_word_b.length
# 		return -1
# 	end

# 	return 0
# end

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars", "shotgun", "compass", "CB radio", "batteries"]
# zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars", "shotgun", "compass", "shotgun shells", "CB radio", "batteries"]

sorted_zombie_supplies = []
zombie_apocalypse_supplies.each do |supply|
	if sorted_zombie_supplies.empty?
		sorted_zombie_supplies << supply
	else
		for i in 0..(sorted_zombie_supplies.length - 1)
			# We knew we could use the spaceship operator, but we built our own comparison method for practice
			# result = compare_word(supply, sorted_zombie_supplies[i])
			result = supply <=> sorted_zombie_supplies[i]
			if result <= 0
				sorted_zombie_supplies.insert(i, supply)
				break
			elsif result > 0 && i == (sorted_zombie_supplies.length - 1)
					sorted_zombie_supplies.push(supply)
			end
		end	
	end
end
p sorted_zombie_supplies

# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# ----
zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars", "shotgun", "compass", "CB radio", "batteries"]

puts "What do you want to check?"
check_item = gets.chomp
found = false
zombie_apocalypse_supplies.each do |supply|

	if check_item == supply
		found = true
		break
	end
end
if found 
	puts "#{check_item} is in the list of supplies"
else		
	puts "#{check_item} is NOT in the list"
end

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----
zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars", "shotgun", "compass", "CB radio", "batteries"]

def delete_item(item, supplies)
	supplies.each_index do |supply_index|
		if item == supplies[supply_index]
			supplies.delete_at(supply_index)
			break
		end
	end
end

while zombie_apocalypse_supplies.length > 5
	puts "What do you want to remove?"
	check_item = gets.chomp
	delete_item(check_item, zombie_apocalypse_supplies)
end
p zombie_apocalypse_supplies


# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars", "shotgun", "compass", "CB radio", "batteries"]
other_survivor_supplies = ["warm clothes", "rations", "compass", "camp stove" "solar battery", "flashlight"]

combined_array = zombie_apocalypse_supplies + other_survivor_supplies
p combined_array.uniq


# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----
extinct_animals.each do |animal, year|
	puts "*" + "#{animal}" + "-" + "#{year}" + "*"
end

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----
def delete_item(delete_year, list)
	list.each do |animal, year|
		if year >= delete_year
			list.delete(animal)
		end
	end
end

delete_item(2000, extinct_animals)

p extinct_animals

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----
extinct_animals.each do |animal, year|
	new_year = year - 3
	extinct_animals[animal] = new_year
end
p extinct_animals

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----

puts "What do you want to check?"
check_item = gets.chomp
found = false
extinct_animals.each do |animal, year|

	if check_item == animal
		found = true
		break
	end
end
if found 
	puts "#{check_item} is in the list of supplies"
else		
	puts "#{check_item} is NOT in the list"
end

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----
