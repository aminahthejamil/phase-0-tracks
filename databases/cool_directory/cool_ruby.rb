# Something cool

# Require Gems
require 'sqlite3'
require 'faker'

# Create SQLite3 database

db = SQLite3::Database.new( "cool_database.db" )

# Fancy string delimiters
create_table_cmd = <<-SQL
  CREATE TABLE kittens(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT
)
SQL

# Create a TABLE
db.execute(create_table_cmd)

#class Something_Cool
#end
