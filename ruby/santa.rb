class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender

	def initialize(gender, ethnicity, age)
		@gender = gender
		# @gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
		
		@ethnicity = ethnicity
		# @ethnicity = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A", "PURPLE"]

		reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		
		@age = 0
		# random age in range
	end

	def speak
		puts " #{@gender} #{@ethnicity} santa says Ho, ho, ho! Haaaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}"
	end

	def celebrate_birthday(age)
		puts "Santa is now #{@age + 1}"
	end

	def gets_mad_at(reindeer_name)
		reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		reindeer_ranking.each_index do |reindeer_name_index|
			if reindeer_name == reindeer_ranking[reindeer_name_index]
			reindeer_ranking.delete_at(reindeer_name_index)
				break
			end
			reindeer_ranking << reindeer_name
		end
		puts reindeer_ranking
	end

	# def gender=(new_gender)
	# 	@gender = new_gender
	# end

	# def age
	# 	@age 
	# end

	# def ethnicity
	# 	@ethnicity
	# end
end

# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")


# santas = []
# gender = ["agender", "female", "bigender", "male", "gender fluid", "N/A"]
# ethnicity = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Italian"]
# # santas =[]
# santas.each do |gender, ethnicity|
#   santas << Santa.new(gender, ethnicity)
# end
# puts "This santa is #{gender} and #{ethnicity} ..."

gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicity = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A", "PURPLE"]
santas = []
rand_gender = gender.sample
rand_ethnicity = ethnicity.sample

ethnicity.each do |type, breed, age|
# ethnicity.length.times do |type, breed, age|
	santas << Santa.new(rand_gender, rand_ethnicity, age)
end
p santas

# santas.each do |santa|
# 	santa.speak
# end

# This is just the practice stuff to see if all the changes worked
# nick = Santa.new("male", "white", 5)
# nick.celebrate_birthday(10)
# nick.age

# nick.gets_mad_at("Dancer")
# nick.speak
# nick.gender = "female"
# nick.speak
# puts "Santa is #{nick.age} and is #{nick.ethnicity}"

