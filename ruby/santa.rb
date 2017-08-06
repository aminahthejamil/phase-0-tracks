class Santa
  attr_reader :age, :ethnicity
  attr_accessor :

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

  # Setter Methods
  def celebrate_birthday=(year_up)
    @celebrate_birthday = @age(year_up)
    year_up += 1
  end

  def get_mad_at=(name)
      @get_mad_at = name
  end

  def gender=(new_gender)
    @gender = new_gender
  end

end

santas = []
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "two-spirit", "centaur", "hermaphrodyte", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "Afro-Korean", "Jackalope", "Winter Bean", "Summer Bean", "Pleiadian", "Andromedan", "prefer not to say", "Unicorn", "N/A"]

genders.length.times do |i|
  santas << Santa.new(genders[2], ethnicities[3])
  santas << Santa.new(genders[1], ethnicities[7])
  santas << Santa.new(genders[6], ethnicities[9])
  santas << Santa.new(genders[7], ethnicities[1])
end

santas.each do |i|
  puts "This santa is #{[i]}"
end

santas[1].gender = genders[7]
