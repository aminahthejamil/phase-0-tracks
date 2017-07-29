array = ["apple", "windows", "linux", "google"]

puts "Original:"
p array
puts ""
array.delete_if{ |os| os == "google" }

array.each do |system|
  system = system.next
end

array.map! do |system|
  p system
  system.next
end

puts "After .each:"
p array

#Release 2 Array Filter
numbers = [2, 6, 45, 67, 78, 32, 4, 13, 17, 54]
puts "Before alterations:"
p numbers
puts ""

numbers.delete_if {|num| num <=30}
puts "Delete less than 30:"
p numbers
puts ""

numbers.delete_if {|num| num >=50}
puts "Delete more than 50:"
p numbers
puts ""

if numbers.include?(45)
  puts "YAY"
  numbers.delete_if {|num| num == 45}
else
  puts "NOOOOO"
end
puts "We delete 45. cause we suck."
if numbers.include?(45)
  puts "YAY"
else
  puts "NOOOOO"
end

#Release 2 Hash Delete

hash = {
  "keyboard" => "keys",
  a: "clickies",
  "screen" => "blue screen of death",
  "speakers" => "twisty knobs"
}
puts "Before alterations:"
p hash
puts ""

hash.delete_if {|acc, function| acc == "keyboard" }
puts "Deleted that damn keyboard."
p hash
puts ""

hash.each do |acc, function|
  puts "The #{acc} has #{function}!"
end

hash.keep_if{|acc| acc == "speakers"}
puts "We kept the speakers and burned the rest. Rock N Roll!"
p hash
puts ""

if hash.length < 20
  hash.delete("speakers")
  puts "we burned the stuff"
else
  puts "We kept the stuff"
end
