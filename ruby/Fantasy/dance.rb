class Dancer
  attr_accessor :name, :age 
  attr_reader :card

  def initialize(name,age)
    @name = name
    @age = age
    @card = []
  end

  def pirouette
     action = "*twirls*"
     p action
  end 

  def bow
    action = "*bows*"
    p action
  end

  def queue_dance_with(dancers)
    @card << dancers
  end
  

  def begin_next_dance
    puts "Now dancing with #{@card[0]}."
  end

end



new_dancer = Dancer.new("Misty Copeland", 33)
new_dancer.name
new_dancer.age
new_dancer.pirouette
new_dancer.bow


dancer = Dancer.new("Mikhail Baryshnikov", 32)
 p dancer.queue_dance_with("Mikhail Baryshnikov")
 dancer2 = Dancer.new("Anna Pavlova", 34)
 p dancer.queue_dance_with("Anna Pavlova")
 p dancer.begin_next_dance
 p dancer.card
 
   





