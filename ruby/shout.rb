
# module Shout

# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end

# 	def self.yelling_happily(words)
# 		words + "!!!" + " :)"
# 	end
# end

# puts Shout.yell_angrily("arg")



module Shout

	def yell_angrily(words)
		puts words + "!!!" + " :("
	end

	def yelling_happily(words)
		puts words + "!!!" + " :)"
	end
end

class Angry_Person
  include Shout
end

class Dog
	include Shout
end

kristen = Angry_Person.new
kristen.yell_angrily("WTF, mate")
kristen.yelling_happily("WTF, mate")

tundra = Dog.new
tundra.yell_angrily("woof")
tundra.yelling_happily("woof")


