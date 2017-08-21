# Basic Diary for Extraordinary People Pseudocode

# - Will create a database in SQLite to house diary entries
# - Possibly have the users input their name as the name of the diary (table) or whatever name they want
# - Have the users add the date of the entry
# - Add title of the entry (if no title entered (if nil) then write 'Untitled')
# - Add body of text
# - Give them an array of overall moods to choose from for the day
  # - Moods will have a different table

# - Abilities for the user:
  # - New entry
  # - Edit old entry (based on [date, title, search for words])
  # - Delete entry

# require gems
  require 'sqlite3'
  require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("basic_diary.db")
db.results_as_hash = true

# learn about fancy string delimiters
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS diary(
    id INTEGER PRIMARY KEY,
    title VARCHAR(255),
    entry_date INT,
    body VARCHAR(255),
    mood INT
  )
SQL

# create a diary table (if it's not there already)

db.execute(create_table_cmd)

# add a test entry

db.execute("INSERT INTO diary (title, entry_date, body, mood) VALUES ('A New Day', 01012017,  'Dear Diary, today was an exquisite day. I hope to continue our relationship into the future.', 2)")
