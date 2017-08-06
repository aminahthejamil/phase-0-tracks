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

class Mad_parrot
  include Shout
end

class Glad_parrot
  include Shout
end

class Sad_clown
  include Shout
end

class Glad_clown
  include Shout
end

mad_parrot = Mad_parrot.new
p mad_parrot.yell_angrily("Polly wants a frickin' cracker")

glad_parrot = Glad_parrot.new
p glad_parrot.yelling_happily("Polly finally got a cracker")

sad_clown = Sad_clown.new
p sad_clown.yell_angrily("Where in the world is my honk honk nose")

glad_clown = Glad_clown.new
p glad_clown.yelling_happily("Doopity doo, how are you")
