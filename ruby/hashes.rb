
#Create an empty hash
#When storing, make sure to use symbols
    #Convert each response to the appropriate data type (e.g. number to integer)
    #Repeat prompting for age, number of children, theme, and whether
    #or not they want wall art, 
#Add each user response/symbol combination into the hash
#Prompt the user if they want to make edits
#Use an if/else loop
      #if yes: have them enter new key they want to update
      #     ask them what the new value should be for the key
      #     store the new value
      #      replace
      # if none: exit
#print updated hash

user_info = {}
puts "What's your name?"
  user_info[:name] = gets.chomp

puts "What's your age?"
  user_info[:age] = gets.to_i

puts "How many kids do you have?"
  user_info[:kids] = gets.to_i

puts "What decor theme do you want?"
  user_info[:theme] = gets.chomp

puts "Do you want wall art?"
  response = gets.chomp
  if response == "yes"
    response = "true"
  elsif response == "no"
    response = "false"
  else
    response = nil
  end
user_info[:art] = response

puts user_info

puts "what key would you like to update?"
    key_to_update = gets.chomp

if key_to_update != "none"
  puts "what value would you want this key to now store?"
    value_to_update = gets.chomp
  user_info[key_to_update.to_sym] = value_to_update
else

end

puts user_info




