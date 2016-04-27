# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  #create an array by separating the words in the string
  # name it grocery_list
  # break up the string into its elements and put into an array
  # array could be named grocery_list
  # determine the length of the array
  # for the same number of times as the length of the array, insert the words into a hash
    #default quantity to 0 for the item/quantity pairs in the new hash
# output: hash


def create_list(string)
  array = string.split(' ')
  grocery_list = {}
  array.length.times do |index|
  grocery_list[array[index]] = 0
  end
  grocery_list
end

# Method to add an item to a list 
# input: (item name, optional quantity, list to add to)
# steps: 
  #use the first 2 arguments as a value/pair
  #store this value/pair in the given list, which would be hash
  #return updated hash
# output: hash with new key/value pair added

def add_to_list(item,quantity,list)
list[item] = quantity
list
end

# Method to remove an item from the list
# input: (item to be removed, list to remove from)
# steps:
  #use the item argument as the key for the hash
  #delete the key/value pair by using the key from the input
  #return the updated hash without the item that was deleted
# output: hash (1 value/pair less)

def remove_from_list(item,list)
list.delete(item)
list
end

# Method to update the quantity of an item
# input: (item to be updated, new quantity, list to update)
# steps:
  #use the item to updated reference to search the hash for that key/value pair
  #set the value of that item to the new quantity
  #return updated hash
# output:

def update_quantity(item, new_quantity, list)
list[item] = new_quantity
list
end

# Method to print a list and make it look pretty
# input: (list to be printed)
# steps:
  #print each item in the list by iterating through all elements of the hash
# output: the last printed statement

def print_list(list)
  list.each do |item, quantity| 
    puts "#{item}: #{quantity}"
  end
end

new_list = create_list("")
add_to_list("lemonade", 2, new_list)
add_to_list("tomatoes", 3, new_list)
add_to_list("onions", 1, new_list)
add_to_list("ice cream", 4, new_list)
remove_from_list("lemonade",new_list)
print_list(new_list)


#Release 5 reflection
#What did you learn about pseudocode from working on this challenge?
# => I learned the benefits of denoting inputs and outputs when thinking through how to write a method
#What are the tradeoffs of using arrays and hashes for this challenge?
# => Arrays were helpful for being able to split a string into its components. However, the array didn't have enough
#depth to be able to store another layer (e.g. quantity). Hashes offered that advantage - storing both item and quantity. 
#What does a method return?
# => A method returns the value of the last executed line of code. 
#What kind of things can you pass into methods as arguments?
# => Strings, integers, other method outputs (which were hashes in this case), Booleans
#How can you pass information between methods?
# => You can have the output of one method become the input argument of another one
#What concepts were solidified in this challenge, and what concepts are still confusing?
# => I helped solidify my understanding of how to manipulate elements in an array. One thing I am confused about is my create method. In the 
#pseudocode, it showed an example input as a string with items listed. However, in Release 5, it didn't specify any inputs for
#the create method. This got me wondering if I should have designed my method so that the List Name was the input argument. Not sure, though. 