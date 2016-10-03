
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
    max_guesses = @word.length
     if @word.include?(char)
     puts "The word contains #{char}."
     elsif
     puts "wrong letter try again."
     elsif max_guesses
     puts "Sorry your all out of guesses"
     @is_over = true
    else
    false
   end
    char
  end

  def current_state
    @progress * @word.length
    if hangman.check_letter(char) == word(char)
      @progress += word(char)
    else
      @progress
    end
  end

   def num_of_guesses
     max_guesses = @word.length
   end
end

  

 # sorry the game is not finished.
 # i spent too much time on the other modules
 # and didnt leave enough time to finish this one
 # im gonna submit this now then re-submit when finished
 # thank you  

   




# USER INTERFACE

puts "Welcome to the hangman game!"
game = Hangman.new

puts "What word do you choose for your opponent to guess?"
game_word = game.user_word(gets.chomp.downcase)

 # p game.random_choice
  # p game.game_word("austin")
  # p game.current_state
  #  game.word
  # p game.check_letter("a")
  # p game.current_state
  # p game.guess_count
 

# game = Hangman.new
# p game.user_word("austin")