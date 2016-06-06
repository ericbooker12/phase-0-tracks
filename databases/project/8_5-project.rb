# OPERATION KITTEN EXPLOSION!

# talk about Object Relational Mapping (ORM)

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("well_data.db")
db.results_as_hash = true

# learn about fancy string delimiters

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS wells(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    location VARCHAR(255),
    depth int,
    active BOOLEAN
  )
SQL

# create the table (if it's not there already)
	
db.execute(create_table_cmd)

# Add data to well table 
def create_well(db, name, location, depth, active)
  db.execute("INSERT INTO well (name, location, depth, active) VALUES (?, ?, ?, ?)", [name, location, depth, active])
end

file = File.new("well_info.txt")

# 2.times do
#   create_kitten(db, Faker::Name.name, 0)
# end

# explore ORM by retrieving data
# kittens = db.execute("SELECT * FROM kittens")
# kittens.each do |kitten|
#  puts "#{kitten['name']} is #{kitten['age']}"
# end

