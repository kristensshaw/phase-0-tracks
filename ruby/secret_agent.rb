#Use for loop to reassign each index in the string using .next method.
#Run for loop on length of password .
#Use if statement to check if the index is a space or not.
#Print reassigned password.

def encrypt(password)
	for i in 0...password.length
		if password[i] == " "
		else
			if password[i] == "z"
				password[i] = "a"
			else
				password[i] = password[i].next
			end
		end
	end
	return password
end

encrypt("password password")

#Use for loop to cycle through each letter of the encrypted password.
#Get the index of each character from the password in the alphabet.
#Use if statement to check if the character is a space or not.
#Subtract 1 from the alphabet index and use that to reassign each letter
#in the password using the alphabet string.

def decrypt(pass)
	for i in 0...pass.length
		if pass[i] == " "
		else
			ind = "abcdefghijklmnopqrstuvwxyz".index(pass[i])
			pass[i] = "abcdefghijklmnopqrstuvwxyz"[ind-1]
		end
	end
	return pass
end

#p encrypt("abc")
#p encrypt("zed")
#p decrypt("bcd")
#p decrypt("afe")
#p decrypt(encrypt("swordfish"))
#The nested method call works because the encrypt method returns a string which is then used
#as the argument for the decrypt method.

puts "Would you like to encrypt or decrypt a password?"
answer = gets.chomp
puts "What is your password?"
user_pass = gets.chomp
if answer == "encrypt"
	p encrypt(user_pass)
else
	p decrypt(user_pass)
end