#Release 0

def blockpass
  puts "block has not passed yet"
  yield("guess what!")
end

blockpass {|call| puts "#{call} - the block has now passed"}

#Release 1

teams = ["Sox", "Cubs", "Hawks", "Bulls"]
ticket_prices = {:sox => 30, :cubs => 35, :hawks => 100, :bulls=> 40}


puts "Before"
p teams
p ticket_prices


puts "After"
  #array/each
  teams.each {|team| puts "the #{team} are great!"}
  
  #hash/each
  ticket_prices.each {|team, price| puts "$#{price} dollars for a #{team}'s game is expensive!"}
  
  #array/map!
  teams.map! do |team|
  "Chicago " + team.capitalize
  end

  p teams


#Release 2
  numbers = [1, 2, 5, 6, 7, 9, 100]
#1
  #p numbers.delete_if{|num| num < 5}
#2
  #p numbers.select{|num| num<5}
#3
  #p numbers.drop_while{|num| num<5}