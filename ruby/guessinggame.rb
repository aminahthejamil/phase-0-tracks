class WordGuess
  attr_reader :the_word
  attr_accessor :the_word, :placeholder

  def initialize(the_word)
    @is_over = false
    @the_word = the_word
    @placeholder = "_" * the_word.length
  end

  def get_letters(guessed_letter)
    @the_word.each_index do |good_letter, index|
      if guessed_letter == good_letter
        @placeholder[] = guessed_letter
        puts "Yes! #{guessed_letter} is in the word!"
      end
      puts @placeholder
      if !@the_word.include?(guessed_letter)
        puts "#{guessed_letter} is not in this word, please try again"
      end
    end
  end

  def game_over
    if @the_word == @placeholder
      puts "Congratulations Player 2, you have won the game!"
    else
      puts "Sorry, Player 2, you did not win this time around."
    end
  end
end
# User Interface

puts "Welcome to the word guessing game, where one player enters a word and the other one guesses it!"



puts "Player 1, please enter a word:"
p1_word = gets.chomp.split('')

game = WordGuess.new(p1_word)
game.the_word = p1_word

letters_guessed = []
guesses = 0

puts "Player 2, go on and guess a letter!"
until guesses == p1_word.length * 2
  p2_letter = gets.chomp.downcase
  if letters_guessed.include? p2_letter
    puts "You already guessed that letter. Guess again!"
    p2_letter = gets.chomp.downcase
    break if p2_letter == "quit"
  end

  letters_guessed << p2_letter

  game.get_letters(p2_letter)

  guesses += 1
end
