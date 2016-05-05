# Virus Predictor

# I worked on this challenge [by myself, with: Dana].
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
#
#Require relative is a shortcut reference that links objects from 2 different files located in the same 
#directory. Require has a similar function, but would require you to use the full directory path to link the objects
#in the different files. 
require_relative 'state_data'

class VirusPredictor

#this method  runs when you create a new instance of the Class VirusPredictor. 
#it sets default values for the instance variables that define the class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects
    predicted_deaths
    speed_of_spread
  end
#private makes it so that the methods below the private call are not accessible from the terminal.
private

#based on population density inputs, variations of a calculation are ran. Numbers are rounded down.
#output is the string that references the value previously calculated
  def predicted_deaths
    # predicted deaths is solely based on population density
    
    case @population_density
      when @population_density >= 200
        number_of_deaths = (@population * 0.4).floor
      when @population_density>= 150
        number_of_deaths = (@population * 0.3).floor
      when @population_density>= 100
        number_of_deaths = (@population * 0.2).floor
      when @population_density >= 50
        number_of_deaths = (@population * 0.1).floor
      else
        number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

#this method is going to increment a default speed value based on the population density
#using conditional if/else statements. It outputs a string that interpolates the speed value
#into the printed statement
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    case @population_density
      when @population_density >= 200
        speed += 0.5
      when @population_density >= 150
        speed += 1
      when @population_density >= 100
        speed += 1.5
      when @population_density >= 50
        speed += 2
      else
        speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects
#
#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
#jersey.virus_effects
#
#california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
#california.virus_effects
#
#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effects

#My Pseudocode
#get the keys of the hash State_data so that I have an array of all the states
#iterate through each state and perform the following functions
  #virus_effects
  #going to need access population density and population deeper in the hash

STATE_DATA.each_key do |state_key|
  state_key = VirusPredictor.new(state_key, STATE_DATA[state_key][:population_density], STATE_DATA[state_key][:population])
  state_key.virus_effects
end

#=======================================================================
# Reflection Section
# 1. The hash syntax "something" => "something" does not create a symbol-based key. 
# You would not be able to use symbol syntax to reference the key. The 'something: "something"' 
#notation creates a symbol-based key. 

#2.Require relative is a shortcut reference that links objects from 2 different files located in the same 
#directory. Require has a similar function, but would require you to use the full directory path to link the objects
#in the different files.

#3.You can iterate through hashes using the .each function, each_key function, each_pair, each_value, etc. 

# 4. When refactoring virus_effects, I noticed the variables were defined as instance variables with the "@" notation.
#This means that the instance variables are accessible anytime you call a class's method on the instance. 

# 5. This lesson helped me solidify my understanding of the scope of instance variables. I learned how that
#when you call a class's method on one of its instances that the instance's instance variables are readily accessible.
# They can be referenced in the class's method itself, instead of needing to have them be input arguments to the method. 