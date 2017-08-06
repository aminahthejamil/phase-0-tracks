module Flight
  def take_off(altitude)
    puts "Taking off and ascending until reaching #{altitude} ..."
  end
end

class Birb
  include Flight
end

class Plane
  include Flight
end
  
