# This program takes data from texts files and loads them into a database. 
# The data is reall data collected from geothermal wells in The Geysers in Lake and Sonoma Counties.
# It creates one table with general info about the wells. The second table stores data collected at the time of 
# drilling: rate of penetration and temperature at each depth. The 2 tables are linked by the Foreign Key well_id
# in the drill_data table to the Primary Key id in the wells table.

# Note: You will need to keep the directory named "data" with all the files inside, in the same folder as 
# this programm in order for it to work.

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("well_data.db")


create_well_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS wells(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    location VARCHAR(255),
    depth INT,
    active BOOLEAN
  )
SQL

create_drill_data_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS drill_data(
    id INTEGER PRIMARY KEY,
    depth REAL,
    drill_rate REAL,
    temperature REAL,
    well_id INT,
    FOREIGN KEY (well_id) REFERENCES wells(id)
  )
SQL

# Add data to well table 
def load_well_data(db, name, location, depth, active)
  db.execute("INSERT INTO wells (name, location, depth, active) VALUES (?, ?, ?, ?)", 
  	[name, location, depth, active])
end

# Add data to the drill_data table
def load_drill_data(db, depth, drill_rate, temperature, well_id)
  db.execute("INSERT INTO drill_data (depth, drill_rate, temperature, well_id) VALUES (?, ?, ?, ?)", 
  	[depth, drill_rate, temperature, well_id])
end

def fill_table(db, csv_file, well_id)
	File.open("data/#{csv_file}") do |f|
		while record = f.gets
			depth, drill_rate, temp = record.chomp.split(',')
			line =  "#{depth} #{drill_rate} #{temp}"
			load_drill_data(db, depth, drill_rate, temp, well_id)
			# lines.push(line)
		end
	end
end

# These line exist so that the same data isn't written over and over to the same tables.
# Comment these lines out to make data persistent.
db.execute("DROP TABLE IF EXISTS wells")
db.execute("DROP TABLE IF EXISTS drill_data")

# create the tables 
db.execute(create_well_table_cmd)
db.execute(create_drill_data_table_cmd)

puts "Go have a coke while your data is loading..."

# Open well_info.txt, read data and load it into wells table in well_data database.
File.open("data/well_info.txt") do |f|
	f.each do |record|
		name, location, depth, active = record.chomp.split(',')
		load_well_data(db, name, location, depth, active)
	end
end

# Create an array to hold names of data files to be used for database.
file_array = ["well_data_1.csv", "well_data_2.csv", "well_data_3.csv"]
test_file_array = ["test_1.csv", "test_2.csv", "test_3.csv"]

# Iterate through array of data files and load into database table.
count = 1  # count keeps track of the well_id foreign key
file_array.each do |i|
	fill_table(db, i, count)
	count += 1
end

well_table = db.execute("SELECT * FROM wells")

flag = true
while flag do
	puts "Choose a well to evaluate. (1, 2, or 3) or press 'q' to quit."
	well_chosen = gets.chomp
	if well_chosen == 'q'
		flag = false
		break
	end

	well_chosen = well_chosen.to_i

	puts "What depth would you like to evaluate? or press 'q' to quit."
	depth_to_eval = gets.chomp
	if depth_to_eval == 'q'
		flag = false
		break
	end

	input_1 = depth_to_eval.to_i
	input_2 = input_1 + 1

	new_table = db.execute("SELECT drill_data.temperature, drill_data.depth, wells.name 
		FROM wells 
		JOIN drill_data 
		ON wells.id = drill_data.well_id 
		AND wells.id = #{well_chosen}
		AND drill_data.depth > #{input_1}
		AND drill_data.depth < #{input_2}
		ORDER BY drill_data.depth
		LIMIT 1")

	if new_table == []
		p "There is no data, choose another depth."
		depth_to_eval = gets.chomp
		if depth_to_eval == 'q'
			flag = false
			break
		end
	end

	puts"At #{input_1}ft (actual depth: #{new_table[0][1]}ft), the temperature of the well named \"#{new_table[0][2]}\" is #{new_table[0][0]} deg fahrenheit."

end


