#Nameswap method reverses the order of the first and last name
def nameswap(first_name, last_name)
  reverse_full_name = last_name + " " + first_name
end

#Alias maker is a method that accepts two inputs: 1) a name 2) a string. Alias maker looks
# at each letter in the name and compares them each to the characters in the given string. If it finds a
# match then, the letter in the name is replaced by the subsequently indexed letter in the string.
def aliasmaker(name, nextswap)
  name_array = name.split('')

  name_array.map! do |letter|
    nextswap_count = 0
    while nextswap_count < nextswap.length
      if letter == nextswap[nextswap_count]
        next_nextswap = nextswap_count + 1
        letter = nextswap[next_nextswap]
        break
      else
        nextswap_count += 1
      end
    end
    letter
  end
  
  name_array.join('')
end

#A small program that allows for users to enter first/last names. Aliases are created from 
#their name inputs. Name/alias pairs are stored in a hash. Until a user 'quits' they can 
#keep entering names and storing their aliases in the hash. 

first_name = ""
names_and_aliases = {}

  while first_name != 'quit'
    puts "Please enter a first name:"
    first_name = gets.chomp  
      if first_name == 'quit'
         break
      else   
        puts "Please enter a last name:"
        last_name = gets.chomp
        new_name = nameswap(first_name, last_name)
        alias_vowels = aliasmaker(new_name,"AEIOUAaeioua")
        alias_consonants = aliasmaker(alias_vowels,"BCDFGHJKLMNPQRSTVWXYZBbcdfghjklmnpqrstvwxyzb")
        puts " Your alias name is " + alias_consonants
        names_and_aliases[new_name] = alias_consonants
      end
    p names_and_aliases
  end

puts "thanks for you making aliases! Here is a summary:"
names_and_aliases.each do |name, changed_alias| 
  puts "#{name}' has an alias of #{changed_alias}"
end








