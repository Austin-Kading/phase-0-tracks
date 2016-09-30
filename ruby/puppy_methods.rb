# class Puppy

#    def fetch(toy)
#      puts "I brought back the #{toy}!"
#      toy
#    end

#    def speak(int)
#       int.times do |woof|
#         p "WOOF!!"
#       end
#    end

#    def roll_over
#       puts "*rolls over*"
#    end

#    def dog_years(h)
#       y = h / 4
#       p y
#    end

#    def high_five
#       puts "*Paw Shake*"
#    end

# end

# spot = Puppy.new
# spot.fetch("ball")
# spot.speak(7)
# spot.roll_over
# spot.dog_years(30)
# spot.high_five

#--------------------------------------------

class Athlete
  
  def initialize(name, age, sport)
    @name = name 
    @age = age
    @sport = sport
  end

  def greet
    puts "Hello my name is #{@name}, I am #{@age}, and my sport is #{@sport}."
  end

  # Release 2: Write Your Own Class, and Experiment!


  def kick(ball, distance)
    i = 1
    puts "#{@name} will kick the #{ball} #{distance} yards."
    while i < 5 
      if i >= 0
      puts "#{@name} has kicked the #{ball} #{distance} yards away!"
      puts "The #{ball} has be kicked #{i} times."
      i += 1
      end
    end 
  end
end

athletes = ["Tom", "Sherman", "Brady", "Tray"]
kick_balls = ["Football","Baseball","Golf Ball","Soccer Ball"]
sports = ["Baseball", "Soccer", "Football", "Golf"] 

 stadium = []

  puts "Iterating through names list to enter into stadium ..."

 50.times do
   new_athlete = Athlete.new(athletes.sample,rand(50), sports.sample)
   athletes << new_athlete
   stadium << athletes
 end

 athletes.each do |athlete|
   athlete.greet
 end

  athlete.each do |name|
    puts "#{athletes.join(", ")}"
    puts "are now entering the stadium and the crowd is roaring!"
    stadium << Athlete.new(athletes, rand(30), kick_balls.sample)
    puts "There are now #{athletes.length} in the stadium."
      puts "-------------------------------"
  end



# p athletes.kick(kick_balls.sample, rand(1..100))
# player = Athlete.new("Jeremy", 25, "Football")
# player.greet
#player.kick("football", 50)