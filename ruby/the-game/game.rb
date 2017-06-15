
class Game

	def initialize
		@secret_word = secret_word
		@total_chances = total_chances
		wrong_try = 0
		# not needed in the class?
		correct_try = ''
		# not needed in the class?
	end

	def obtain_secret_word(secret_word_user1)
		puts "User 1, please enter a word for the game"
		secret_word = gets.chomp
		# secret word needs to be able to get the sample word which is out of scope of class.
	end

	def mask_char(secret_word, guessed_word)
		mask = ' '
		secret_word.chars {|char| mask += (guessed_word.include? char) char : '*'}
		return mask
	end

	def chances(secret_word)
		total_chances = secret_word.length
		# is .length counting the word itself as a value or each letter in the secret word
	end

	def prompt_user2
		puts "Guess what the secret word is:" + mask_char(secret_word, '')
		# should this be out of the class? 
	end

end

puts "Welcome to 'Oh shit there is a cliff, I better get this right'"
game = Game.new
# starts a new game with the methds and parameters in game class

game.obtain_secret_word
# prompts the user1 to deliver a word of their choice which is then designated/reassigned to be the secret_word for the rest of the game.
	
until game.is_done
	puts "Guess the word and enter a letter. You have #{total_chances - wrong_try}"
	char = gets.chomp

		if secret_word.include? char
			if correct_try.include? char
				puts char + "was already entered"
				# puts "Try again: " + mask_char(secret_word, correct_try)

			else
				correct_try = correct_try + char
				mask_char = mask_char(secret_word, correct_try)
				puts "Well done!" + mask_char
			end

		else
			puts "Sorry, that is not correct"
			wrong_try += 1

			if wrong_try == total total_chances
				puts "Hope you had good life insurance. You're done"
				break

			else
				puts "Try again: " + mask_char(secret_word, correct_try)
			end
		end
end