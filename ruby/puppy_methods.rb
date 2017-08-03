class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
    puts "Woof!"
  end

  def roll_over(action)
    action = "*rolls over*"
    puts "#{action}"
  end

  def dog_years(dog_years)
    7 * dog_years = human_years
    human_years
  end

  def lick(action)
    action = "*lick*"
  end

  def initialize
    puts "Initializing new puppy instance..."
  end

end
# Driver Code
# Initialize Puppy class
Puppy.new

# Initialize new instance of Fido
fido = Puppy.new

# Test the fetch method
p fido.fetch("ball")
