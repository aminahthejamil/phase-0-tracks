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
