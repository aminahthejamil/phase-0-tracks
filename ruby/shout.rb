# Release 1 Code
=begin
module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words + "!!!" + " :) yay"
  end
end

p Shout.yell_angrily("I can't believe this mess")
p Shout.yell_angrily("What is this nonsense")
p Shout.yelling_happily("Summer is finally here babay")
=end

# Release 3 Code

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end
  def yelling_happily(words)
    words + "!!!" + " :-D yay"
  end
end

class Angry_parrot
  include Shout
end

class Happy_clown
  include Shout
end

parrot = Angry_parrot.new
p parrot.yell_angrily("Polly wants a frickin' cracker")

clownface = Happy_clown.new
p clownface.yelling_happily("Doopity doo, how are you")
