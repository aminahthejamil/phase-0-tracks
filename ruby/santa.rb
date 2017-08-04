class Santa


  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    "Initializing Santa instance..."
  end

  @age = 0
  @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

  def speak
    puts "Ho, ho, ho! Haaaaaaaappy holidays!"
  end

  def eat_milk_and_cookies(type_of)
    puts "That was a good #{type_of} cookie!"
  end

end

santas = []
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

genders.length.times do |i|
  santas << Santa.new(genders[2], ethnicities[3])
end

print santas
