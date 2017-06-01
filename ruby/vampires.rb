loop_run = 0
	puts "How many employees will be processed?"
	employees = gets.chomp.to_i
	until loop_run == employees
		loop_run+= 1

	valid_input = false
	puts "What is your name?"
	vampire_names = gets.chomp
	
	if vampire_names == "Tu Fang"
	valid_input = true

	elsif vampire_names == "Drake Cula"
	valid_input = true

	end

	puts "How old are you in years?"
	age = gets.chomp.to_i

		if age > 100
			puts "That's suspicious"
			age_input = true
		else 
			puts "Looking good!"
			age_input = false
		end

	puts "What year were you born?"
	year = gets.chomp.to_i
	dob_time = 2017-year

		if dob_time != age
			puts "THAT is even more suspicious!"
			dob_input = true
		else
			puts "That makes mathematical sense."
			dob_input = false
		end

	valid_input = false
	until valid_input 

		puts "Our company cafeteria serves garlic bread. should we order some for you, yes or no?"
		preference = gets.chomp

			if preference == "yes"
				puts "Oh you'll love it"
				valid_input = true
				hates_garlic = false

			elsif preference == "no"
				puts "Why would you not? **glares**"
				valid_input = true
				hates_garlic = true

			else
				puts "Please answer yes or no"
			end
	end	

	valid_input = false
	until valid_input

		puts "Would you like to enroll in the company's health insurance, yes or no?"
		enroll = gets.chomp

			if enroll == "yes"
				puts "Being a werewolf is hard on the body. Insurance is recommended"
				valid_input = true
				doesnt_need_insurance = false

			elsif enroll == "no"
				puts "You're not immortal, are you?!"
				valid_input = true
				doesnt_need_insurance = true

			else
				puts "please answer yes or no"
			end
	end		

	valid_input = false
	until valid_input

		puts "Name any allergies"
		allergy_input = gets.chomp
	
			if allergy_input == "done"
				vampire_allergy = false
				valid_input = true

			elsif allergy_input == "sunshine"
				vampire_allergy = true
				valid_input = true
	
			end
	end

	if 	!(age_input || dob_input && hates_garlic && doesnt_need_insurance || vampire_allergy || vampire_names)
		puts "Probably not a vampire"

	elsif age_input && (dob_input || hates_garlic || doesnt_need_insurance || vampire_allergy)
		puts "Wow, probably a vampire"

	elsif age_input && (hates_garlic && doesnt_need_insurance)
		puts "Almost certainly a vampire"
	
	elsif vampire_names 
		puts "Defintely a vampire"	
					
	else
		puts "Results inconclusive"
	end
	puts "Actually nevermind! Let's all be friends"
end
