@vowels = ["a", "e", "i", "o", "u"]
# @consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
@consonants = ("a".."z").to_a - @vowels

def new_vowel(letter)
  i = 0
  while i < @vowels.length
    if @vowels[i] == "u"
        return @vowels[0]
    elsif @vowels[i] == letter
        return @vowels[i + 1]
    end
    i += 1
  end
end

def new_consonant(letter)
  i = 0
  while i < (@consonants.length)
    if @consonants[i] == "z"
        return @consonants[0]
    elsif @consonants[i] == letter
        return @consonants[i + 1]
    end
    i += 1
  end
end

def alias_letter(character)
    if @vowels.include?(character)
        new_vowel(character)
    elsif @consonants.include?(character)
        new_consonant(character)
    end
end

def alias_maker(name)
    names = name.downcase.split(" ")
    first_name = names[0]
    last_name = names[1]

    new_first_name = last_name.chars.map do |i|
        alias_letter(i)
    end

    new_last_name = first_name.chars.map do |i|
        alias_letter(i)
    end
    
    new_first_name.join.capitalize! + " " + new_last_name.join.capitalize!
end

puts "what is your name"
user_input = gets.chomp
p alias_maker(user_input)