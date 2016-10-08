class Game
attr_reader :word, :is_over, :progress, :num_of_guesses, :correct_guesses, :wrong_guesses

  
  def initialize(word)
    @word = word
    @correct_guesses = []
    @wrong_guesses = []
    @num_of_guesses = 0
    @is_over = false
    @progress = word_dashes
  end

# Method that checks to see if @word includes letter
  def has_letter?(letter)
    p @progress
    @word.split('').each_with_index do |let, i|
      if let == letter
        @progress[i] = letter
      end
    end
 # I'm having trouble getting correct guess to quit game 
 # cause i dont think it is being stored properly
    if @word.include?(letter)
      puts "The word does include #{letter}!"
      @num_of_guesses += 1
       @correct_guesses << letter
      p @num_of_guesses
    else
      puts "The word does not include #{letter}."
      @wrong_guesses << letter
    end

    p @progress
  end

# Method that quits the game if conditions are met
  def game_won
    if @correct_guesses == @word
      puts "You have guessed the word!"
      @is_over = true
    elsif @num_of_guesses == @word.length
      puts "Sorry, you are all out of guesses."
      @is_over = true
    else
      false
    end
  end

  private

  def word_dashes
    "_" * @word.length
  end
end




# TEST CODE
game = Game.new("allergy")

puts "Welcome to the guessing game!"
puts ''

while !game.game_won
  puts "What letter would you like to guess"
  puts ''

  guess = gets.chomp
  game.has_letter?(guess)
end

