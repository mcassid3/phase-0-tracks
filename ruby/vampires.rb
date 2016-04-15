puts "How many employees will be processed?"
  employees_processed = gets.chomp.to_i
  
  i = 0
while i < employees_processed
    i +=1
    puts "lets process employee number #{i} "

  puts "What is your name?"
    vampire_name = gets.chomp

  puts "How old are you?"
    vampire_age = gets.chomp.to_i

  puts "What year were you born?"
    vampire_year_born = gets.chomp

  puts "Our company cafeteria serves garlic bread. Should we order some for you?"
    vampire_garlic_bread = gets.chomp

  puts "Would you like to enroll in the company’s health insurance?"
    vampire_insurance = gets.chomp

allergies = ""
while allergies != "sunshine"
  puts "Please list your allergies. Type 'done' when they have all been listed"
  allergies = gets.chomp
  break 'Probably a vampire' if allergies == "sunshine"
  break if allergies == 'done'
end

  current_year = 2016

  if (vampire_name == "Drake Cula") || (vampire_name == "Tu Fang")
      puts "Definitely a vampire"
  
  elsif (current_year - vampire_age == vampire_age) && (vampire_garlic_bread =="yes" || vampire_insurance == "yes") 
      puts "Probably NOT a vampire"

  elsif (current_year - vampire_age != vampire_age) && (vampire_garlic_bread =="no" || vampire_insurance == "no") 
      puts "Probably a vampire"

  elsif (current_year - vampire_age != vampire_age) && (vampire_garlic_bread =="no" && vampire_insurance =="no") 
      puts "Almost certainly a vampire"

  elsif (current_year - vampire_age == vampire_age) && (vampire_garlic_bread == "yes" || vampire_insurance == "yes") 
      puts "Probably a vampire"

  else
      puts "Results inclusive"
  end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

end

puts "All employees have been processed"
