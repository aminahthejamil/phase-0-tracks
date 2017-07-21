#Encryption
=begin
     - User inputs password
     - Encryption pushes the letters of the password forward one letter
=end


def encrypt
#Get user's password
  puts "Enter a password, must be 6 characters: "
  pwd_string = gets.chomp

  index = 0
  while index < pwd_string.length
   pwd_string[index] = pwd_string[index].next
   index += 1
  end

puts pwd_string

end
encrypt

#Decryption
=begin

=end
