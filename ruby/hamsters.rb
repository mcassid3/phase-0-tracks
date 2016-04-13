puts "Hey you, what's your hamster's name?"
  hamster_name = gets.chomp
puts "What volume level can your hamster sleep through (pick an integer 1-10)?"
  hamster_volume = gets.chomp.to_i
puts "What color is your hamster's fur?"
  fur_color = gets.chomp
puts "Is your hamster a good candidate for adoption?"
  adoption_status = gets.chomp
  if adoption_status == "Yes" || "Y"
     adoption_status = true
  else
     adoption_status = false
  end

puts "How old is your hamster?" 
  hamster_age = ""
  hamster_age = gets.chomp
if hamster_age == ""
  hamster_age = nil
end

puts "Your #{hamster_age} year(s) old, #{fur_color} hamster #{hamster_name} likes sleeping at a #{hamster_volume} volume level, and it is #{adoption_status} that #{hamster_name} is a good candidate for adoption"