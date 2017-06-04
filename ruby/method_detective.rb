# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".<swapcase>
# => “InVeStIgAtIoN”
"NaNobyTe".swapcase

# "zom".<gsub(/{o}/, 'o' =>'oo')>
# => “zoom”
"Ah".gsub(/A/, 'A' => 'Aaaaaaa')

# "enhance".<center(4)>
# => "    enhance    "
"Kristen".center(6)

# "Stop! You’re under arrest!".<upcase>
# => "STOP! YOU’RE UNDER ARREST!"
"I said no more jelly beans!".upcase

# "the usual".<prepend>
#=> "the usual suspects"
a = " drift"
a.prepend("formula")
a
# " suspects".<???>
# => "the usual suspects"
a =  " suspects"
a.prepend("the usual")
a

# "The case of the disappearing last letter".<chop>
# => "The case of the disappearing last lette"
"I like cats".chop

# "The mystery of the missing first letter".<[1..-1]>
# => "he mystery of the missing first letter"
"nano is cat"[1..-1]

# "Elementary,    my   dear        Watson!".<squeeze>
# => "Elementary, my dear Watson!"
"This is a            fun nightmare".squeeze(" ")

# "z".<ord>
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
"a".ord #=> 97

# "How many times does the letter 'a' appear in this string?".<count "a">
# => 4
"I like bikes".count "e" #=> 2