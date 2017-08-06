class Santa
  attr_reader :age, :ethnicity
  attr_accessor :celebrate_birthday, :get_mad_at, :gender

  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    "Initializing Santa instance..."
    @age = 0
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end


  def get_mad_at(name)
    og_reindeer_list = @reindeer_ranking
    new_reinder_list = []
    og_reindeer_list.delete(name)
    og_reindeer_list.insert(-1, name)
    new_reinder_list << og_reindeer_list
  end

  def celebrate_birthday
    @age = @age + 1
    puts "Santa is now #{@age}"
  end

  def speak
    puts "Ho, ho, ho! Haaaaaaaappy holidays!"
  end

  def eat_milk_and_cookies(type_of)
    puts "That was a good #{type_of} cookie!"
  end
end

santas = []
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "two-spirit", "centaur", "hermaphrodyte", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "Afro-Korean", "Jackalope", "Winter Bean", "Summer Bean", "Pleiadian", "Andromedan", "prefer not to say", "Unicorn", "N/A"]

# Release 1
=begin
genders.length.times do |i|
  santas << Santa.new(genders[2], ethnicities[3])
end
=end

# Release 2
santas.each do |i|
  puts "This santa is #{[i]}"
end
=begin
p santas[0].celebrate_birthday
p santas[0].get_mad_at("Comet")
p santas[0].speak
p santas[0].eat_milk_and_cookies("M&M")
p santas[0].gender = "Non-binary"

p santas[0]
=end
# Release 4

ctr = 0
inclusive_santas = []
while ctr < 10
  the_santas = Santa.new(genders.sample, ethnicities.sample)
  inclusive_santas << the_santas
  ctr += 1
end

inclusive_santas[0].eat_milk_and_cookies("M&M")
inclusive_santas[2].celebrate_birthday
p inclusive_santas[0].ethnicity
p inclusive_santas[4].ethnicity
p inclusive_santas[4].gender
p inclusive_santas[6].get_mad_at("Dancer")
p the_santas.get_mad_at("Donner")
p the_santas.celebrate_birthday
