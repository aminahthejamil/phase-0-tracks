#Pseudocode
=begin
Switch the first and last name
1. Separate the names into 2 array objects
2. Swap the names
3. Downcase the names
4. Switch out the vowels to the next vowels
5. Switch out the consonants to the next consonants
6. Capitalize the names
7. Out put the new alias name

=end

#Pseudocode
=begin
Switch the first and last name
1. Separate the names into 2 array objects
2. Swap the names
3. Downcase the names
4. Switch out the vowels to the next vowels
5. Switch out the consonants to the next consonants
6. Capitalize the names
7. Out put the new alias name

=end

def down_case(str)
  str.downcase
end

def vowels(str)
  str = down_case(str)
  str.gsub(/[aeiou]/, "a" => "e", "e" => "i", "i"  => "o", "o" => "u", "u" => "a")
end

def consonants(str)
  str = vowels(str)
  str.gsub(/[bcdfghjklmnpqrstvwxyz]/, "b" => "c",  "c" => "d", "d" => "f", "f" => "g", "g" =>"h",   "h" => "k", "k" => "l", "l" => "m","m" => "n",   "n" => "p", "p" => "q", "q" =>"r", "r" => "s",   "s" => "t", "t" => "v","v" => "w", "w" => "x",   "x" => "y", "y" =>"z",  "z" => "b")
end

def separate(arr)
  arr = consonants(arr)
  arr.split('')
end

def together_now(str)
  str = separate(str)
  str.join
end

def capitalize(str)
  str = together_now(str)
  str.capitalize
end

alias_database = []
puts "Welcome to the Alias Creator! Type 'quit' to finish"
loop do 

  puts " "
  puts "What's your first name?"
  first_name = gets.chomp!
  break if first_name == 'quit'
  puts "What's your last name?"
  last_name = gets.chomp

  real_name = first_name + " " + last_name
  new_alias = capitalize(last_name) + " " + capitalize(first_name)
  
  alias_database << real_name
  alias_database << new_alias
  puts "Your new Alias is: "
  puts new_alias
  
end

puts alias_database


