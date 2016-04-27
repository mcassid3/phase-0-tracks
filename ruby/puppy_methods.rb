class Puppy

  def initialize 
    puts "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
  end

  def speak(integer)
    integer.times do 
    puts "woof"
    end
  end

  def roll_over
    puts "rolls over"
  end

  def dog_years(integer)
    if integer <= 2
      dog_age = integer*10.5
    elsif integer>2
      dog_age = (integer - 2)*4 + 21
    else
      puts "invalid input"
    end
    p dog_age
  end

def play_dead
  puts "BOOM!"
  puts "dog lays over..."
end

end

puppy = Puppy.new
puppy.speak(5)
puppy.roll_over
puppy.dog_years(5)
puppy.play_dead


class Hockey_player

  def shoot(mph)
    puts "Players shoots a #{mph} mph slapshot!"
  end
  
  def hit(person_hit)
    puts "#{person_hit} just got checked!"
  end

end

players = []
50.times do 
  players << Hockey_player.new
end

players.each do |player|
   player.shoot(90)
   player.hit("Bob")
end