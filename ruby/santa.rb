class Santa
  attr_reader  :ethnicity, :reindeer_ranking
  attr_accessor :gender, :age

  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    #puts " Initializing Santa instance.."
  end

  def speak
    puts "Ho, ho, ho! Haaaaaapy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

  def celebrate_birthday 
    @age += 1
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking << reindeer_name
  end

end

#santa = Santa.new("male","black")

#santa.speak

#santa.eat_milk_and_cookies("Oreo")

#testing get_mad_at_me method 
  #p santa.reindeer_ranking
  #santa.get_mad_at("Dasher")
  #p santa.reindeer_ranking

#testing celebrate_birthday method
  #p santa.age
  #santa.celebrate_birthday
  #p santa.age

#testing getter and setter methods
  #p santa.ethnicity
  #p santa.gender
  #santa.gender= "female"
  #p santa.gender

#driver code for creating many, diverse santas
santas = []
example_genders = ["agender", "male", "female", "gender fluid"]
example_ethnicities = ["latino", "black","white","pacific islander"]

100.times do |i|
  random_gender = example_genders[rand(example_genders.length)]
  random_ethnicity = example_ethnicities[rand(example_ethnicities.length)]
  santas << Santa.new(random_gender, random_ethnicity)
end
  
#printing out a summary of each santa instance's attributes
i=1
santas.each do |santa_instance|
  santa_instance.age = rand(0..140)
  p "Santa number #{i} is #{santa_instance.age} years old, #{santa_instance.gender}, and #{santa_instance.ethnicity}"
  i+=1
end




