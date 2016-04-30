#Class Name - Snowboarder
#Attributes
# => board_type: Burton, Forum, Neversummer, etc. 
# => stance: goofy or regular
# => maximum_spin: 720
#Methods
# => do a trick  (input: trick name)
# => grind a rail (input: none)
# => hit a jump (gap distance)


class Snowboarder

attr_reader :name , :stance
attr_accessor :board_type , :max_spin , :distance_of_gap

  def initialize(name, stance)
    @name = name
    @stance = stance
    @board_type = "Neversummer"
    @max_spin = 720
    @distance_of_gap = 20
  end

  def do_a_trick(trick_name)
    puts "#{@name} just did a #{trick_name}!"
  end

  def grind_rail
    puts "#{name} is grinding that snowboard rail. Hope it doesn't scratch his #{board_type}" 
  end

  def hit_a_jump(distance_of_gap)
    @distance_of_gap = distance_of_gap    
    if distance_of_gap > 20
      @max_spin += 180
    end 
  end


end


puts "How many professional snowboarders do you know (and want to tell me about)?"
number_snowboarders = gets.to_i

snowboarders = []

number_snowboarders.times do |i|
  puts "What's snowboard number #{i+1}'s name?"
    name = gets.chomp
  puts "What's your snowboarder #{i+1}'s stance?"
    stance = gets.chomp

  snowboarders << Snowboarder.new(name, stance)
end

response = "yes"
while response == "yes"
  puts "Do you want to add any others? yes/no"
    response = gets.chomp
  break if response != "yes"
  puts "What's the additional snowboarder's name?"
    name = gets.chomp
  puts "What's the additional snowboarder's stance?"
    stance = gets.chomp

  snowboarders << Snowboarder.new(name, stance)
end


snowboarders.each do |snowboarder_instance|
  puts "#{snowboarder_instance.name} is a #{snowboarder_instance.stance}-footed snowboarder capable of doing a #{snowboarder_instance.max_spin} spin"
end


puts ".............now just for fun - let's watch a snowboarder hit a jump and do a spin."
puts "Here it goes! #{snowboarders[0].name} is hitting a really big jump! Currently his max spin is #{snowboarders[0].max_spin}."

snowboarders[0].hit_a_jump(25)

puts "That was a #{snowboarders[0].distance_of_gap} foot jump! #{snowboarders[0].name}'s max spin is now #{snowboarders[0].max_spin}"




