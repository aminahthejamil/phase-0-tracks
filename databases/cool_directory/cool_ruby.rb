# Something cool

# Require Gems
require 'sqlite3'
require 'faker'

# Create SQLite3 database

db = SQLite3::Database.new( "cool_database.db" )

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
db.execute("INSERT INTO kittens (name, age) VALUES ('Bomas', 5)")

#class Something_Cool
#end
