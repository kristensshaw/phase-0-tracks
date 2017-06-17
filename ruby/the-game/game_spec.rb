require_relative 'game'

describe Game do

  describe "#masked_word" do

    it "masks characters of the word with which it was initialized with an underscore" do
      game = Game.new("cat")
      expect(game.masked_word).to eq "_ _ _"
    end

    it "reveals any characters that have been guessed correctly" do
      game = Game.new("cat")
      game.guess("c")
      game.guess("b")
      expect(game.masked_word).to eq "c _ _"
    end
  end

  describe "#guesses_remaining" do

    it "is initially the number of character in the initialized word" do
      game = Game.new("cat")
      expect(game.guesses_remaining).to eq 3
    end

    it "decrements for each bad guess" do
      game = Game.new("cat")
      game.guess("b")
      expect(game.guesses_remaining).to eq 2
    end

    it "does not decrement duplicated bad guess" do
      game = Game.new("cat")
      game.guess("b") 
      game.guess("b")
      expect(game.guesses_remaining).to eq 2
    end

    it "does not decrement for good guesses" do
      game = Game.new("cat")
      game.guess("a") 
      expect(game.guesses_remaining).to eq 3
    end
  end

  describe "#done" do

    it "will return true if the user runs out of guesses" do
      game = Game.new("cat")
      game.guess("b") 
      game.guess("n")
      game.guess("l")
      expect(game.done).to eq true
    end

    it "will return true if the user guessed the entire word" do
      game = Game.new("cat")
      game.guess("c") 
      game.guess("a")
      game.guess("t")
      expect(game.done).to eq true
    end

    it "will return false if the user has more guesses remaining" do
      game = Game.new("cat")
      game.guess("c")
      game.guess("a")
      expect(game.done).to eq false
    end
  end

  describe "#guess" do

    it "records the guess" do
      game = Game.new("cat")
      game.guess("c")
      expect(game.masked_word).to eq "c _ _"
      
      expect(game.guesses_remaining).to eq 3
      game.guess("w")
      expect(game.guesses_remaining).to eq 2
    end

    it "ends the game when the guess is the last masked letter" do
      game = Game.new("cat")
      game.guess("c")
      game.guess("a")
      expect(game.done).to eq false

      game.guess("t")

      expect(game.done).to eq true 
    end

    it "will return true if the guessed character is in the secret word" do
      game = Game.new("cat")
      # game.guess("c")
      expect(game.guess("c")).to eq true
    end

    it "will return false if the guessed character is not in the secret word" do
      game = Game.new("cat")
      expect(game.guess("b")).to eq false
    end
  end

  describe "#initialize" do

    it "stores a secret word" do
      game = Game.new("cat")
      game.guess("c")
      expect(game.masked_word).to eq "c _ _"
      
    end

    it "records the secret word length as the variable total chances" do 
      game = Game.new("cat")
      expect(game.guesses_remaining).to eq 3
    end
  end
end