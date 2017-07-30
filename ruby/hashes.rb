=begin
Ask users for:
  - full name
  - age
  - location (city, state)
  - budget (list of budget ranges)
  - # of kids
  - # of rooms
  - # of floors
  - decor theme (list of decor themes, include nil)
  - palette choice (required if no decor theme chosen; list of palette options)
  - accent walls (true or false)
  - lighting (list of decoritive adjectives [fancy, ecclectic, rustic, etc])
  - stairs? (true or false)
  - basement? (true or false)
  - decorate basement? (true or false)
  - *basement decoration will have to be scheduled at a later date
  1. Greet the user and welcome them to the Interior Design Questionnaire
  2. Ask for the user's full name
    - string
  3. Ask for the user's age
    - integer
  4. Ask for the user's city and state
    - string
      - (city, AB)
  5. Ask the user for the number of children they have
    - integer
  6. Ask the user for the number of rooms there are in the home
    - integer
  7. Ask user for the number of floors they have (not including basement)
    - integer
  8. Ask user to pick from a list of decor theme options (choose one only)
    - print a list of options as strings and return only one option as integer
      - include nil for if user does not want a decor theme
  9. Ask user if they want accent walls
    - boolean true or false
  10. Ask user the type of lighting they want (choose one only)
    - print a list of options as strings and return only one options
  11. Ask user if they have stairs
    - boolean true or false
  12. Ask user if they have a basement
    - boolean true or false
  13. Ask user if they want basement decorated
    - boolean true or false
      - If yes, the user will have to schedule a second consultation
      - If no, no other actions need to be taken
  14. Submit the form
  15. Print to screen
  16. Ask the user if there are is anything they would like to updated
    - if yes:
      - Ask user to type in the label (key) they would like to update
      - print new updates to screen
    - if no
      - print to screen as final
=end

interior_design = {
 :full_name => "",
 :age => "",
 :city_state => "",
 :children => "",
 :rooms => "",
 :floors => "",
 :decor_theme => "",
 :accent_walls => "",
 :stairs => "",
 :basement => "",
}
puts "Welcome to the Interior Design Application. Please read through the questions carefully and answer each one."
puts "What is your full name?"
interior_design[:full_name] = gets.chomp
puts "How old are you?"
interior_design[:age] = gets.chomp.to_i
puts "What's you location (city, state)?"
interior_design[:city_state] = gets.chomp
puts "How many children do you have?"
interior_design[:children] = gets.chomp.to_i
puts "How many rooms do you plan to have designed?"
interior_design[:rooms] = gets.chomp.to_i
puts "How many floors do you have in your home?"
interior_design[:floors] = gets.chomp.to_i
puts "Please choose one option from the following decor themes (respond with the number, ex. '3')."
puts "1. Ocean"
puts "2. Desert"
puts "3. Bohemian"
puts "4. Moroccan Bazaar"
puts "5. Elegant chic"
interior_design[:decor_theme] = gets.chomp.to_i
puts "Would you like accent walls (y/n)?"
interior_design[:accent_walls] = gets.chomp
 if interior_design[:accent_walls] == "y"
   accent_walls = true
 else
   accent_walls = false
 end
puts "Do you have stairs in your home (y/n)?"
interior_design[:stairs] = gets.chomp
 if interior_design[:stairs] == "y"
   stairs = true
 else
   stairs = false
 end
puts "Do you have a basement (y/n)?"
interior_design[:basement] = gets.chomp
 if interior_design[:basement] == "y"
   basement = true
 else
   basement = false
 end
if basement == true
 puts "Would you like your basement designed (y/n)?"
 user_input = gets.chomp
   if user_input == "y"
     puts "Let's set up a separate consultation later!"
   end
end
p interior_design

puts "If you see any mistakes, please use the label name in square bracks followed by a space, equal sign, and the updated information to make the correction (i.e. [rooms] = 4). When you are finished, please type 'done'.

If no corrections need to be made, simply type 'done'."

user_input = gets.chomp.to_sym

if user_input == ""
  interior_design[user_input] = ""
else user_input == "done"
  p interior_design
end
