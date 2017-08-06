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


birb = Birb.new
birb.take_off(800)

plane = Plane.new
plane.take_off(30000)
