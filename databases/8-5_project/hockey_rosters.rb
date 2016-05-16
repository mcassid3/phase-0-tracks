#Each year I organize a 300 player hockey tournament called the Illinois Alumni 
#Hockey Tournament. High schools from across Illinois register alumni teams
#to compete. It is a charity event that raises over $20,000 to support nonprofits
#working to fight educational inequality. The organization of rosters and teams happens
#primitively in spreadsheets. I'd like to create a way for teams to register their schools
#and maintain their rosters. Having an easier way to do this will help me able to focus
#more time on other areas of fundraising that would help us raise even more.


#require gems
require 'sqlite3'
require 'faker'

#create a tournament database
db = SQLite3::Database.new("tournament.db")
db.results_as_hash = true

#Create 3 tables - one for Schools, one for Players, One For Rosters
  #Schools
    #primary key
    #name
  #Players
    #name
    #position
    #school
    #HS Grad Year

create_schools_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS schools(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)
  )
SQL

create_players_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS players(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    position VARCHAR(255),
    grad_year INTEGER,
    school_id INTEGER,
    registration_status BOOLEAN
  )
SQL


db.execute(create_schools_table_cmd)
db.execute(create_players_table_cmd)

#Teams sign up their schools - add row to Schools 
def create_school(db, school_name)
  #if school_name does not match any of the records in the array
  no_match = true
  current_school_list = db.execute("SELECT * FROM schools")
  current_school_list.each do |current_school|
    if current_school['name'] == school_name
      no_match = false
    end
  end

  if no_match 
    db.execute("INSERT INTO schools (name) VALUES (?)", [school_name])
    puts "#{school_name} has been added to the team list."
  else
    puts "School already exists."
  end
end

#Teams add players to their rosters - add row to Players
def create_player(db,name, position, grad_year,school_id,registration_status)
  db.execute("INSERT INTO players (name,position,grad_year,school_id,registration_status) VALUES (?,?,?,?,?)", [name,position,grad_year,school_id,registration_status])
end

#Teams can delete players from their roster - delete row from Players (not sure about notation)
def delete_player(player_name)
  db.execute("DELETE FROM players WHERE name = '?'",[player_name])
end

#Teams can update players and their information - update rows from Players

current_teams = ['Marist','Sandburg','Lincoln-Way Central #1', 'Lincoln-Way Central #2','Andrew', 
  'Lincoln-Way East','Mt. Carmel', 'Fenwick','St. Viator','Homewood Flossmoor','Sandburg',
  'Riverside Brookfield','Conant','St. Laurence','St. Rita','Brother Rice','Lyons Township',
  'Providence Catholic #1','Providence Catholic #2','Downers Grove South','Downers Grove North',
  'Naperville Central']


#Added all the previously registered schools
#current_teams.each do |school|
 #create_school(db,school)
#end


#User interface
school_response = ""
until school_response == "done"
  puts "Would you like to register a new school?. Type 'done' when you do not need to add any more schools."
    school_response = gets.chomp
    if school_response == "Yes"
      puts "What is the school's name?"
        new_school = gets.chomp
        create_school(db,new_school)
    else 
      puts "Sorry, then you have come to the wrong place."
    end
end

player_response = ""

until player_response == "done"
puts "Would you like to register a player?"
  player_response = gets.chomp
  
  if player_response == "Yes"
    puts "What's is the player's name?"
        player_name = gets.chomp
    puts "What position does #{player_name} play?"
        position = gets.chomp
    puts "What year did #{player_name} graduate HS?"
        grad_year = gets.chomp
    
    current_school_list = db.execute("SELECT * FROM schools")
    current_school_list.each do |current_school|
      p current_school['name']  
      p current_school['id']
    end

    puts "Type the school id number for the school #{player_name} will skate for."
      school_id = gets.chomp
    puts "Did #{player_name} pay yet?"
      registration_status = gets.chomp
      registration_status = registration_status =="Yes"? true:false

    create_player(db,player_name, position, grad_year,school_id, registration_status)
  else 
    puts "Sorry, then you have come to the wrong place."
  end
end





