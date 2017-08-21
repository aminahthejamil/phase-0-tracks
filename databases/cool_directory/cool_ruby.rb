# Something cool

# Require Gems
require 'sqlite3'
require 'faker'

# Create SQLite3 database

db = SQLite3::Database.new( "cool_database.db" )
#db.results_as_hash = true

# Fancy string delimiters
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS kittens(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT
)
SQL

# Create a TABLE
db.execute(create_table_cmd)

# add a test kittens
#db.execute("INSERT INTO kittens (name, age) VALUES ('Bomas', 5)")

# explore ORM by retrieving data
kittens = db.execute("SELECT * FROM kittens")
kittens.each do |kitten|
  puts "#{kitten[1]} is #{kitten[2]}"
end

10.times do
  create_kitten(db, Faker::Name.name, 0)
end

#class Something_Cool
#end
