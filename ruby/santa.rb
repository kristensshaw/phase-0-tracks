class Santa
	attr_reader :age, :ethnicity, :reindeer_ranking
	attr_accessor :gender

	def initialize(gender, ethnicity, age)
		@gender = gender
		# @gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
		
		@ethnicity = ethnicity
		# @ethnicity = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A", "PURPLE"]

		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		
		@age = age
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
		reindeer_ranking.each_index do |reindeer_name_index|
			if reindeer_name.downcase == reindeer_ranking[reindeer_name_index].downcase
				reindeer_ranking << reindeer_ranking.delete_at(reindeer_name_index)
				break
			end
			# reindeer_ranking << reindeer_name
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
age = (0..140).to_a
santas = []

until santas.length == 100
	rand_gender = gender.sample	
	rand_ethnicity = ethnicity.sample
	rand_age = age.sample
	santas << Santa.new(rand_gender, rand_ethnicity, rand_age)
end
p santas

# or to eliminate any possible duplicates in the sample use the code below.

# until santas.length == 10
# 	rand_gender = gender.sample	
# 	rand_ethnicity = ethnicity.sample
# 	rand_age = age.sample
# 	santas << Santa.new(rand_gender, rand_ethnicity, rand_age)
# 	santas.uniq!
# end
# p santas


# def random_gender(type)
# 	i = 0
# 	while i < 20
# 		rand_gender = []
# 		gender.each do |type|
# 			rand_gender << gender.sample
# 		end
# 		i+= 1
# 	end
# 	puts rand_gender
# end
	
# def random_ethnicity(type)
# 	ethnicity.each do |type|
# 		rand_ethnicity = ethnicity.sample
# 	end
# end
# ethnicity.each do |breed|
# # ethnicity.length.times do |type, breed, age|
# 	santas << Santa.new(rand_ethnicity)
# end
# p santas


# santas.each do |santa|
# 	santa.speak
# end

# This is just the practice stuff to see if all the changes worked
nick = Santa.new("male", "white", 5)
nick.celebrate_birthday(10)
nick.age

nick.gets_mad_at("rudolph")
nick.gets_mad_at("dancer")
nick.speak
nick.gender = "female"
nick.speak
puts "Santa is #{nick.age} and is #{nick.ethnicity}"

