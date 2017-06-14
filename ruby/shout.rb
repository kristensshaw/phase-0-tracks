
module Shout

	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yelling_happily(words)
		words + "!!!" + " :)"
	end
end

puts Shout.yell_angrily("arg")

# class Angry_Person
#   include Shout
# end

# kristen = Angry_Person.new

# kristen.yell_angrily("WTF, mate")
# Angry_Person.yell_angrily('WTF')


# module Shout

# 	def yell_angrily(words)
# 		words + "!!!" + " :("
# 	end
# end

# class Angry_Person
#   include Shout
# end

# kristen = Angry_Person.new

# kristen.yell_angrily("WTF, mate")
# Angry_Person.yell_angrily('WTF')