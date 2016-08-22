#   module Shout
#     def self.yell_angrily(words)
#       words + "!!!" + " :("
#     end

#     def self.yelling_happily(words)
#       words + "!!!!" + " ;)"
#   end
# end

# p Shout.yell_angrily("GGGGGGRRRRRR")
# p Shout.yelling_happily("YYYAAAAAAYYYY")


  module Shout
    def self.yell_angrily(words)
      words + "!!!" + " :("
    end

    def self.yelling_happily(words)
      words + "!!!!" + " ;)"
  end
end

  Class Fans
    include Shout
  end 


  Class Police
    include Shout
  end


  fan = Fans.new
  police = Police.new

  fan.yell_angrily("BOOOOOOO")
  police.yell_angrily("Stop right there")

  fan.yelling_happily("Way to go")
  police.yelling_happily("Good job deputy")







