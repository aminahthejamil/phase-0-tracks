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


class Car

  def ignition(action)
    action = "*vroom vroom*"
    puts "#{action}"
  end

  def car_color(color)
    puts "The color of this car is #{color}!"

  end

  def initialize
    puts "Initializing new drive instance..."
  end
end


counter = 0
instance_array = []
while counter < 51
  mazda = Car.new
  counter += 1
  instance_array << mazda
end
puts instance_array

instance_array.each do 
  puts mazda.ignition("drive")
  puts mazda.car_color("silver")
end
