
class Hangman
  attr_reader :guess_count, :is_over, :progress
  attr_accessor :word
 
   def initialize
    @word = []
    @guess_count = 0
    @is_over = false
    @progress = "_" 
   
   end

   def game_word(choice_word)
    @word = choice_word.downcase.split('')
   end

  def check_letter(char)
    @guess_count += 1
     if @word.include?(char)
      puts "The word contains #{char}."
     else
    puts "wrong letter try again."
    end
  end

  def current_state
    @progress * @word.length
  end
end

   def num_of_guesses
    max_guesses = @word.length
   end

   

   




# USER INTERFACE

# puts "Welcome to the hangman game!"
game = Hangman.new

# puts "What word do you choose for your opponent to guess?"
# game_word = game.user_word(gets.chomp.downcase)

 # p game.random_choice
  p game.game_word("austin")
  p game.current_state
  #  game.word
  # p game.check_letter("a")
  # p game.current_state
  # p game.guess_count
 

# game = Hangman.new
# p game.user_word("katie")