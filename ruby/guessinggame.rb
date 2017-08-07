class GuessingGame
  attr_reader
  attr_accessor :word_array

  def initialize
    @guess_count = 0
    @is_over = false
    @word_array = Array.new
  end

  def get_letter
    @guess_count += 1
    if
  end

end

# User Interface

puts "Welcome to the word guessing game, where one player enters a word and the other one guesses it!"

game = GuessingGame.new

puts "Player 1, please enter a word: "
p1_input = gets.chomp


word_array << p1_input.split('')

=begin
while !game.is_over
  puts "Enter a letter:"
  guess = gets.chomp
  if !game.get_letter(guess - 1)
end
=end
