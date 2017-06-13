
module Shout

	def self.yell_angrily(words)
		puts words + "!!!" + " :("
	end
end

class Angry_Person
  include Shout
end

kristen = Angry_Person.new

kristen.yell_angrily("WTF, mate")