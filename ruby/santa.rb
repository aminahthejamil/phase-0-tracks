class Santa
  def speak
    puts "Ho, ho, ho! Haaaaaaaappy holidays!"
  end

  def eat_milk_and_cookies(type_of)
    puts "That was a good #{type_of} cookie!"
  end

  def initialize
    "Initializing Santa instance..."
  end
end

bobby_santa = Santa.new

bobby_santa.eat_milk_and_cookies("choco chip")
bobby_santa.speak
