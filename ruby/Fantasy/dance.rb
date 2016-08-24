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

  def queue_dance_with(add_dancer)
    @card << add_dancer
  end

end

new_dancer = Dancer.new("Misty Copeland", 33)
new_dancer.name
new_dancer.age
new_dancer.pirouette
new_dancer.bow


add_dancer = Dancer.new("Mikhail Baryshnikov", 34)


