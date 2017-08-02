# Method for the calculations

def calculate(int1, operator, int2)

  case
  when operator == "+"
    ans = int1 + int2
  when operator == "-"
    ans = int1 - int2
  when operator == "*"
    ans = int1 * int2
  when operator == "/"
    ans = int1 / int2
  end

end


# Hash calculation and answer database
calc_database = {}

# User Interface
puts "Welcome to the Most Basic Holy Calculator"

puts "Enter the characters for a simple two number calculation, such as '1+2' (or type 'quit' when you're done): "
loop do

  user_input = gets.chomp
  break if user_input == 'quit'
  user_input.split('')
  answer = calculate(user_input[0].to_i, user_input[1], user_input[2].to_i)

  if user_input.length > 3
    puts "Oh no! Try again!"
  elsif user_input.length < 3
    puts "Oh no! Try again!"
  end
  puts "Keep going!"


  calc_database[user_input] = [answer]
end

puts "You performed #{calc_database.length} calculation(s):"
calc_database.each do |equation, answer|
puts "You asked the calculator #{equation} and got back #{answer}"
end
