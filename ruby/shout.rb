#module Shout
#  # we'll put some methods here soon, but this code is fine for now!
#
#  def self.yell_angrily(words)
#    words + "!!!" + " :("
#  end
#
#  def self.yell_happily(words)
#    words + "!!!" + " haha" + " :)"
#  end
#
#
#end

module Shout
 
 def yell_angrily(words)
   words + "!!!" + " :("
 end

  def yell_happily(words)
    words + "!!!" + " haha" + " :)"
  end

end

class Teacher
  include Shout
end

class Coach
  include Shout
end

teacher = Teacher.new
puts teacher.yell_angrily("Turn in your HW")

coach = Coach.new
puts coach.yell_happily ("Nice catch")