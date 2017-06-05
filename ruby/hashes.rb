# what is the name of the program
# ask name, age, number of children, decor theme, favorite color, like lots of sun .
# print out the client response
# be able to update key for user and allow "none" to skip update
# print updated version. 
	puts "Welcome to the interior design form, please fill out"

	puts "What is your name?"
		name_input = gets.chomp

	puts "What is your age?"
		age_input = gets.chomp.to_i

	puts "How many children do you have?"
		number_of_children = gets.chomp.to_i

	puts "What is your preferred decor theme?"
		decor_pref = gets.chomp

	puts "What is your favorite color?"
		color_pref = gets.chomp

	puts "Do you want a lot of sun in the house or no?"
		sun_pref = gets.chomp

	special_requests = []
	puts "Please list any special requests or ideas that will help us with perspective of what you want. Type 'done' when finished"

	loop do
		request_input = gets.chomp
		break if request_input == "done"
		special_requests << request_input
	end


interior_design = {
	
	name: name_input,
	age: age_input,
	number_of_children: number_of_children,
	decor_theme: decor_pref,
	favorite_color: color_pref,
	sun_preference: sun_pref,
	special_req: special_requests
}

p interior_design


	puts "Any corrections need to be made? If everything is correct, enter 'none'. If you need to make a correction, type 'yes'"
	user_input = gets.chomp
		if user_input == "none"
			p interior_design
			
		elsif user_input == "yes"	
		puts "Please indicate what field you'd like to update"
		user_input = gets.chomp

			if user_input == "name"
				puts "what would you like to change it to?"
					new_name = gets.chomp
				interior_design[:name] = new_name

			elsif user_input == "age"
				puts "what would you like to change it to?"
					new_age = gets.chomp.to_i
				interior design[:age] = new_age

			elsif user_input == "number of children"
				puts "what would you like to change it to?"
					new_children_count = gets.chomp.to_i
				interior_design[:number_of_children] = new_children_count

			elsif user_input == "decor theme"
				puts "what would you like to change it to?"
					new_decor = gets.chomp
				interior_design[:decor_theme] = new_decor

			elsif user_input == "favorite color"
				puts "what would you like to change it to?"
					new_color = gets.chomp
				interior_design[:favorite_color] = new_color

			elsif user_input == "sun preference"
				puts "what would you like to change it to?"
					new_sun = gets.chomp
				interior_design[:sun_preference] = new_sun

			end
			p interior_design
		end

		puts 
