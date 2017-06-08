@vowels = ["a", "e", "i", "o", "u"]
@consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]

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


def alias_maker(name)
    name.downcase!
    first_name = name.split(" ")[0]
    last_name = name.split(" ")[1]

    new_first_name = last_name.chars.map do |i|
        if @vowels.include?(i)
            new_vowel(i)
        elsif @consonants.include?(i)
            new_consonant(i)
        end
    end


    new_last_name = first_name.chars.map do |i|
        if @vowels.include?(i)
            new_vowel(i)
        elsif @consonants.include?(i)
            new_consonant(i)
        end
    end
   new_first_name.join.capitalize! + " " + new_last_name.join.capitalize!
end

puts "what is your name"
user_input = gets.chomp
p alias_maker(user_input)