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
    temp_in REAL,
    temp_out REAL
  )
SQL

# create the table (if it's not there already)
	
db.execute(create_well_table_cmd)
db.execute(create_drill_data_table_cmd)

# Add data to well table 
def create_well(db, name, location, depth, active)
  db.execute("INSERT INTO wells (name, location, depth, active) VALUES (?, ?, ?, ?)", [name, location, depth, active])
end

# Open well_info.txt, read data and load it into wells table in well_data database.
data_array = [];
File.open("data/well_info.txt") do |f|
	f.each do |record|
		name, location, depth, active = record.chomp.split(',')
		create_well(db, name, location, depth, active)
	end
end

well_table = db.execute("SELECT * FROM wells")
p well_table



# explore ORM by retrieving data
# kittens = db.execute("SELECT * FROM kittens")
# kittens.each do |kitten|
#  puts "#{kitten['name']} is #{kitten['age']}"
# end

