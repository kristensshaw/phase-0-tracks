#use .each
numbers = ["1", "4", "6", "9"]
new_num = []
puts "original data"
p numbers
p new_num

numbers.each do |number|
new_num << number.next
end
puts "After .each call"
p numbers
p new_num

#use .map
boat_animals = ["cat", "dog", "cow", "sheep"]
puts "original data:"
p boat_animals
boat_animals.map! do |animal|
  p animal
  animal.upcase
end
puts "After .map! call"
p boat_animals

#hash .each
grocery_list = {"milk" => '1', "beers" => '6', "ribs" => '2'}
p grocery_list

grocery_list.each do |item, quantity|
puts "we need #{quantity} #{item}"
end

#Release
#1 Array Version
number_arr = [1, 2, 3, 4, 5, 6]
number_arr.delete_if {|a| a>3}
number_arr
#1 Hash Version
hash = {"Clippers" => 100, "Lakers" => 150, "Warriors" => 200}
hash.delete_if {|key, value| key >= "Lakers"}
hash
#2 Array
number_arr = [1, 2, 3, 4, 5, 6]
number_arr.keep_if {|a| a>3}
number_arr
#2 Hash
hash = {"Clippers" => 100, "Lakers" => 150, "Warriors" => 200}
hash.keep_if {|key, value| key >= "Lakers"}
hash
#3 Array
arr = [3, 4, 5, 6, 7, 8]
arr.select {|a| a<6}
arr
#3 Hash
hash = {"Clippers" => 100, "Lakers" => 150, "Warriors" => 200}
hash.select {|key, value| key > "Clippers"}
hash
#4 Array
arr = [1, 3, 4, 5, 6, 7, 0]
arr.drop_while {|a| a < 5}
arr
#4 Hash
#hash = {"Clippers" => 100, "Lakers" => 150, "Warriors" => 200}
#hash.drop_while {|key, value| key > "Clippers"}
#hash
#I will look tomorrow