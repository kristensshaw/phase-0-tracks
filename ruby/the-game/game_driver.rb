require_relative 'game'

puts "Welcome to 'Oh shit there is a cliff, I better get this right'"

puts "Please enter a word for the game"
secret_word = gets.chomp

game = Game.new(secret_word)
# create an instance of the game that takes in the user 1 secret word so that the secret word is only entered once

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
  puts "Sorry, you lost. Tough nugs."
else
  puts "You survived!"
end
# present an until done loop that will terminate the program when done is true. 
# print information based on whether something was a good guess of not.
# then after the loop done and the loop is terminated prints oneof two messages noting that they either survived or lost. 
