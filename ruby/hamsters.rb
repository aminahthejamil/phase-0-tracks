#Hamster Sanctuary

puts "What's the hamster's name?"
name = gets.chomp

puts "What's your sleep sensitivity from 1-10?"
volume = gets.chomp.to_i

puts "What's the color of the hamster's fur?"
fur_color = gets.chomp

puts "Would you recommend this hamster for adoption (y/n)?"
     input = gets.chomp
if input == "y"
     adoptable = true
else
     adoptable = false
end

puts "How old would you say this hamster is?"
est_age = nil
