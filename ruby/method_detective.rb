# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
 => “InVeStIgAtIoN”

 "zom".replace "zoom"
 => “zoom”

 "enhance".center(20)
 => "    enhance    "

 "Stop! You’re under arrest!".upcase
 => "STOP! YOU’RE UNDER ARREST!"

 "the usual" << " suspects"
=> "the usual suspects"

"the usual" + " suspects".to_s
=>"the usual suspects"

 "The case of the disappearing last letter".chop
 => "The case of the disappearing last lette"

 "The mystery of the missing first letter".slice(0)
 => "he mystery of the missing first letter"

 "Elementary,    my   dear        Watson!".squeeze
 => "Elementary, my dear Watson!"

 "z".ord
 => 122 
 Returns the integer ordinate of a one character string
 "How many times does the letter 'a' appear in this string?".count('a')
 => 4