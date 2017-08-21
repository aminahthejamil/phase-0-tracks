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

# Fancy string delimiter
=begin
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS diary(
    id INTEGER PRIMARY KEY,
    title VARCHAR(255),
    entry_date INT,
    body VARCHAR(255),
    mood_id INT,
    FOREIGN KEY (mood_id) REFERENCES moods(id)
  )
SQL

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS moods(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)
  )
SQL
=end
# create a diary table (if it's not there already)

# db.execute(create_table_cmd)
