

class Game

	def initialize(secret_word)
		@secret_word = secret_word
		@total_chances = secret_word.length
		@guesses = []
		@is_done = false
	end
  
	def masked_word
	  masked_word_chars = @secret_word.chars.map { |char| (@guesses.include? char)? char : '_'}
	  masked_word_chars.join(' ')
	end
	  
	  
  def guess(character)
  	@guesses << character

    entire_word_guessed = true
    @secret_word.chars.each do |char|
      if !@guesses.include? char
        entire_word_guessed = false
        break
      end
    end
    if entire_word_guessed
      @is_done = true
    end

    if @secret_word.include? character
      true
    else
      false
    end
  end
# add in method that counts the number of chances left, possibly have it run as a loop
  
	def guesses_remaining
    bad_guesses = 0
    @guesses.uniq.each do |guess|
      if !@secret_word.include? guess
      # (@secret_word.include? guess)
        bad_guesses += 1
      end
    end
    @total_chances - bad_guesses
  end

  def done
    if (guesses_remaining == 0 || @is_done == true)
      # put parens around the two conditionals and the parens keeps them isolated so the program doesn't lose track.
      true
    else
      false
    end
    # the game is done if we are out of guesses or the flag is set(true)
  end


 #  def chances
	# 	# total_chances = obtain_secret_word.length
	# 	@total_chances = @secret_word.length
	# 	# total_chances
	# 	# is .length counting the word itself as a value or each letter in the secret word
	# end

	# def mask_char(secret_word, guessed_word)
	# 	mask = ''
	# 	secret_word.chars { |char| mask += (guessed_word.include? char)? char : '_'}
	# 	mask
	# end

	
	# def prompt_user2
	# 	puts "Guess what the secret word is:" + mask_char(secret_word, '')
	# 	# should this be out of the class? 
	# end

end
puts "Welcome to 'Oh shit there is a cliff, I better get this right'"

puts "User 1, please enter a word for the game"
secret_word = gets.chomp

game = Game.new(secret_word)


until game.done
  puts "Guess what this is: #{game.masked_word} (you have #{game.guesses_remaining} chances remaining)"
  puts "Enter your guess"
  user_guess = gets.chomp

  good_guess = game.guess(user_guess)
  if good_guess
    puts "Well done."
  else
    puts "Sorry, that was incorrect."
  end
end

if game.guesses_remaining == 0
  puts "tough nugs"
else
  puts "You survived!"
end























# until game.is_done
#   puts "Guess the word and enter a letter. You have #{total_chances - wrong_try} chances left"
#   char = gets.chomp

#     if secret_word.include? char
#       if correct_try.include? char
#         puts char + "was already entered"
#         # puts "Try again: " + mask_char(secret_word, correct_try)

#       else
#         correct_try = correct_try + char
#         mask_char = mask_char(secret_word, correct_try)
#         puts "Well done!" + mask_char
#       end

#     else
#       puts "Sorry, that is not correct"
#       wrong_try += 1

#       if wrong_try == total_chances
#         puts "Hope you had good life insurance. You're done"
#         break

#       else
#         puts "Try again: " + mask_char(secret_word, correct_try)
#       end
#     end
# end













# guess = gets.chomp

# game.guess(guess)

# puts game.guesses_remaining







# starts a new game with the methds and parameters in game class

		
# 		# secret word needs to be able to get the sample word which is out of scope of class.
# 	end
# game.obtain_secret_word
# # prompts the user1 to deliver a word of their choice which is then designated/reassigned to be the secret_word for the rest of the game
# game.chances
# puts 'Guess what is:' + mask_char(secret_word, '')	

# until game.is_done
# 	puts "Guess the word and enter a letter. You have #{total_chances - wrong_try} chances left"
# 	char = gets.chomp

# 		if secret_word.include? char
# 			if correct_try.include? char
# 				puts char + "was already entered"
# 				# puts "Try again: " + mask_char(secret_word, correct_try)

# 			else
# 				correct_try = correct_try + char
# 				mask_char = mask_char(secret_word, correct_try)
# 				puts "Well done!" + mask_char
# 			end

# 		else
# 			puts "Sorry, that is not correct"
# 			wrong_try += 1

# 			if wrong_try == total_chances
# 				puts "Hope you had good life insurance. You're done"
# 				break

# 			else
# 				puts "Try again: " + mask_char(secret_word, correct_try)
# 			end
# 		end
# end









































# class Game
# 	attr_accessor :correct_try, :wrong_try, :secret_word
# 	def initialize
# 		@secret_word = secret_word
# 		@total_chances = total_chances
# 		wrong_try = 0
# 		# not needed in the class?
# 		correct_try = ''
# 		# not needed in the class?
# 		@is_done = false
# 	end

# 	def obtain_secret_word(secret_word_user1)
# 		puts "User 1, please enter a word for the game"
# 		secret_word = gets.chomp
# 		# secret word needs to be able to get the sample word which is out of scope of class.
# 	end

# 	def mask_char(secret_word, guessed_word)
# 		mask = ''
# 		secret_word.chars { |char| mask += (guessed_word.include? char)? char : '*'}
# 		return mask
# 	end

# 	def chances(secret_word)
# 		total_chances = secret_word.length
# 		# is .length counting the word itself as a value or each letter in the secret word
# 	end

# 	def prompt_user2
# 		puts "Guess what the secret word is:" + mask_char(secret_word, '')
# 		# should this be out of the class? 
# 	end

# end

# puts "Welcome to 'Oh shit there is a cliff, I better get this right'"
# game = Game.new
# # starts a new game with the methds and parameters in game class

# game.obtain_secret_word
# # prompts the user1 to deliver a word of their choice which is then designated/reassigned to be the secret_word for the rest of the game.
	
# until game.is_done
# 	puts "Guess the word and enter a letter. You have #{total_chances - wrong_try}"
# 	char = gets.chomp

# 		if secret_word.include? char
# 			if correct_try.include? char
# 				puts char + "was already entered"
# 				# puts "Try again: " + mask_char(secret_word, correct_try)

# 			else
# 				correct_try = correct_try + char
# 				mask_char = mask_char(secret_word, correct_try)
# 				puts "Well done!" + mask_char
# 			end

# 		else
# 			puts "Sorry, that is not correct"
# 			wrong_try += 1

# 			if wrong_try == total_chances
# 				puts "Hope you had good life insurance. You're done"
# 				break

# 			else
# 				puts "Try again: " + mask_char(secret_word, correct_try)
# 			end
# 		end
# end