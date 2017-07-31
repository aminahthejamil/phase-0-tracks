#Encryption
=begin
     - User enters password
     - While the index is less than the length of the user's password, move to
     next letter of the alphabet
     - When the index equals the length of the password, stop encrypting
     - Print the user's encrypted password
=end



def encrypt
#Get user's password
  puts "Enter a password: "
  pwd_string = gets.chomp
  index = 0
  while index < pwd_string.length
   pwd_string[index] = pwd_string[index].next
   index += 1
  end


puts pwd_string

end

#Decryption
=begin
     - User enters password
     - While the index is less than the length of the user's password, get the
     letter before the user's input
     - When the index equals the length of the password, stop decrypting
     - Print the user's decrypted password
=end


def get_previous(letter)
  if letter.length != 1
    return
  end
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  index = alphabet.index(letter)
  alphabet[index-1]
end

def decrypt
puts "Enter a password: "
  pwd_string = gets.chomp

  index = 0
  while index < pwd_string.length
    pwd_string[index] = get_previous(pwd_string[index])
   index += 1
  end

puts pwd_string

end

#DRIVER CODE


# Ask the user if they want to encrypt or decrypt a password
puts "Would you like to encrypt or decrypt a password? (Enter 'encrypt' or 'decrypt')"
encrypt_decrypt = gets.chomp

# User is asked for their password in the method definition



 if encrypt_decrypt == "encrypt"
    encrypt
 else
    decrypt
 end
