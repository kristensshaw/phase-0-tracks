
module Shout

	def yell_angrily(words)
		words + "!!!" + " :("
	end
end

class Angry_Person
  include Shout
end

kristen = Angry_Person.new

kristen.yell_angrily("WTF, mate")
Angry_Person.yell_angrily('WTF')