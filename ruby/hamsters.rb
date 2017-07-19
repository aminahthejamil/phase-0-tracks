#Hamster Sanctuary

est_age = nil

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
est_age = gets.chomp.to_i

puts "This hamsters name is #{name}"
puts "This hamster has a volume of #{volume}"
puts "This hamster's fur color is #{fur_color}"
puts "Do we recommend adoption: #{adoptable}"
puts "This hamster's age is estimated to be #{est_age}"
