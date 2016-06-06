# OPERATION KITTEN EXPLOSION!

# talk about Object Relational Mapping (ORM)

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("well_data.db")
# db.results_as_hash = true

# learn about fancy string delimiters

create_well_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS wells(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    location VARCHAR(255),
    depth int,
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

# create the table (if it's not there already)
	
db.execute(create_well_table_cmd)
db.execute(create_drill_data_table_cmd)

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

# Open well_info.txt, read data and load it into wells table in well_data database.
File.open("data/well_info.txt") do |f|
	f.each do |record|
		name, location, depth, active = record.chomp.split(',')
		load_well_data(db, name, location, depth, active)
	end
end

# Create an array to hold names of data files to be used for database.
# drill_data_files = ["well_data_1.txt", "well_data_2.txt", "well_data_3.txt"]


lines = []

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

# Iterate through array of data files and load into database table.
file_array = ["well_data_1.csv", "well_data_2.csv", "well_data_3.csv"]
test_file_array = ["test_1.csv", "test_2.csv", "test_3.csv"]

count = 1  # count keeps track of the well_id foreign key
test_file_array.each do |i|
	fill_table(db, i, count)
	count += 1
end


# lines.each do |line|
# 	puts line
# end

# p lines

# line = f.readline
# line2 = f.readline


# p "line = #{line}"
# p "line2 = #{line2}"

well_table = db.execute("SELECT * FROM wells")
# p well_table



# explore ORM by retrieving data
# kittens = db.execute("SELECT * FROM kittens")
# kittens.each do |kitten|
#  puts "#{kitten['name']} is #{kitten['age']}"
# end

