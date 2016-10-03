
class Hangman
  attr_reader :guess_count
  attr_reader :word
 
 def initialize
  @word = "banjo"
  @guess_count = 0
  @is_over = false
 end

end