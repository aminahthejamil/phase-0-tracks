class WordGuess
  attr_reader :the_word
  attr_accessor :the_word, :placeholder

  def initialize(the_word)
    @is_over = false
    @the_word = the_word.downcase
    @placeholder = "_" * the_word.length
    puts @placeholder
  end

  def get_letters(guessed_letter)
    @the_word.split('').each_index do |good_letter, index|
      if guessed_letter == good_letter
        @placeholder[index] = guessed_letter
        puts "Yes! #{quessed_letter} is in the word!"
      end
      p @placeholder
      if !@the_word.include?(guessed_letter)
        puts "#{guessed_letter} is not in this word, please try again"
      end
    end
  end
end
# User Interface

puts "Welcome to the word guessing game, where one player enters a word and the other one guesses it!"



puts "Player 1, please enter a word:"
p1_word = gets.chomp

game = WordGuess.new(p1_word)
game.the_word = p1_word

letters_guessed = []
guesses = 0

until guesses == p1_word.length * 2

  puts "Player 2, go on and guess a letter!"
  p2_letter = gets.chomp
  break if p2_letter == "quit"

  if letters_guessed.include? p2_letter
    puts "Sorry, you already guessed that letter. Guess again!"
    p2_letter = gets.chomp
    break if p2_letter == "quit"
  end

  letters_guessed << p2_letter

  game.get_letters(p2_letter)

  guesses += 1
end


















=begin
player_one_word.each do |letters|
  letter.length
  puts

=end


=begin
while !game.is_over
  puts "Enter a letter:"
  guess = gets.chomp
  if !game.get_letter(guess - 1)
end
=end
