class GuessingWords
  attr_reader :guesses
  attr_accessor :is_over, :placeholder, :the_word

  def initialize(the_word)
    @is_over = false
    @guess_arr = []
    @guesses = the_word.length * 2
    @the_word = the_word
    @placeholder = Array.new(the_word.length, "_")
    @ctr = 0
  end
#Code to get the letters from Player 2 and check them against Player 1's word
  def get_letters(letter)
    @guesses += 1
    if the_word.include?(letter)
      puts "The word contained #{letter}!"
      letter_replacement(letter)
    else
      puts "Oh, no...#{letter} isn't in the word. :-("
    end
    if !@guess_arr.include?(letter)
      @ctr += 1
    end

    @guess_arr << letter

    if @the_word == @placeholder.join() || @ctr == @guesses
      game_is_over
      @is_over = true
    end
  end
#Code to replace the placeholder value "_" with the correct letter if it is guessed by Player 2
  def letter_replacement(letter)
    @the_word.split('').each_with_index do |e, i|
      if e == letter
        @placeholder[i] = letter
      end
    end
  end
#Code to show how far Player 2 has come in their guesses
  def progression
    puts "Progress: #{@placeholder.join('')}"
  end
  #Code for winning/losing game
  def game_is_over
    if @the_word == @placeholder.join()
      puts "Congratulations! You've won!"
    else
      puts "Nanner nanner boo boo, you lose. But it's okay, because you're still a winner in my eyes."
    end
  end
end

#User Interface

#Greeting and Player 1 word input, splits letters of word into individual elements of an array
puts "Welcome to the Word Guessing game, made just for you!"
puts "Player 1, please enter a word:"
the_word = gets.chomp

game = GuessingWords.new(the_word)
system "clear"

#game.dashes = ("-" * game.p1_word.length).split('')

while !game.is_over
  puts "Player 2, choose a letter (enter 'quit' if you'd like to end the game early):"
  p2_letter = gets.chomp
  break if p2_letter == 'quit'
  game.get_letters(p2_letter)
  game.progression
end
