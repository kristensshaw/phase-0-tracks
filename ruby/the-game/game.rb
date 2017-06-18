
# create a class that contains an inititalize method and mothods to mask the secret word placed by user, identifity if a guess is considered good or bad or if the whole secret word is guessed, count the guesses remaining based off of the iteration through the array of guesses if the character submitted by user two matches any of the character in the secret word, and then a method that tells the game when the game is done or meets the qualifications of the game being done such as if the guesses remaining are 0 or if 
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
	  # method to mask the word from the user one input and to convert the masked character to the character if it is indeed correct in the secret word. secret word is string so need to convert to array and rejoin. 
	  
  def guess(character)
  	@guesses << character

    entire_word_guessed = true
    @secret_word.chars.each do |char|
      if !@guesses.include? char
        entire_word_guessed = false
        # we start with a state of true. as we iterate through the secret word character by character, if our guesses array does not include a secret words character then the idea of the user 2 already guessing the entire word is false. if it is false then this method knows to stop checking to see if the game is done because it is not done based on the whole word not being guessed yet. 
        break
      end
    end
    if entire_word_guessed
      @is_done = true
    end

    if @secret_word.include? character
      # this portion of the method simply checks the user 2 guess (character selected) and identifies that if the character is indeed one of the characters in the secret word, the the guess is true, otherwise it is false if the character entered is not in the secret word provided. 
      true
    else
      false
    end
  end
  
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
# the bad guesses start at 0. as you iterate through the guesses in the guesses array, you ignore the duplicates to not count against the user2, and check to see if the guess is in the secret word and if it is indeed not, then there is a count or tally against the user 2. the guesses remaining will be the differnce between the total chances and the bad guesses. 

  def done
    if (guesses_remaining == 0 || @is_done == true)
      # put parens around the two conditionals and the parens keeps them isolated so the program doesn't lose track.
      true
    else
      false
    end
    # the game is done if we are out of guesses or the flag is set(true)
  end
# this method will determine which conditions will be met to consider the game done. if the guesses remaining are 0 and if the is done flag is set to true/ 
end
