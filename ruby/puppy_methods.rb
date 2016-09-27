class Puppy

   def fetch(toy)
     puts "I brought back the #{toy}!"
     toy
   end

   def speak(int)
      int.times do |woof|
        p "WOOF!!"
      end
   end

   def roll_over
      puts "*rolls over*"
   end

   def dog_years(h)
      y = h / 4
      p y
   end

end

spot = Puppy.new
spot.fetch("ball")
spot.speak(7)
spot.roll_over
spot.dog_years(30)
