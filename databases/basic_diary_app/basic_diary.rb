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
#db = SQLite3::Database.new("basic_diary.db")
#db.results_as_hash = true

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

# Diary Code

class Diary
  @db = SQLite3::Database.new("basic_diary.db")
  attr_accessor :title, :entry_date, :body, :mood
  def initialize
    @title
    @entry_date
    @body
    @mood
  end

  def add_title(title_entry)
    db.execute("INSERT INTO diary (title) VALUES (?)", [title])
  end

  def add_date(date_entry)
    db.execute("INSERT INTO diary (entry_date) VALUES (?)", [entry_date])
  end

  def add_body(body_entry)
    db.execute("INSERT INTO diary (body) VALUES (?)", [body])
  end

  def add_mood(num)
    db.execute("INSERT INTO diary (mood) VALUES (?)", [mood])
  end

  def edit_title(title_edit)
    db.execute("UPDATE diary SET title=(?) WHERE title=(?)", [title])
  end

  def edit_date(date_edit)
    db.execute("UPDATE diary SET entry_date=(?) WHERE entry_date=(?)", [entry_date])
  end

  def edit_body(body_edit)
    db.execute("UPDATE diary SET body=(?) WHERE body=(?)", [body])
  end

  def edit_mood(mood_edit)
    db.execute("UPDATE diary SET mood=(?) WHERE mood=(?)", [mood])
  end

end

# User Interface

puts "Welcome the Basic Diary for Extraordinary People"
puts "Thank you for choosing El Ruby de la Paz for your diary needs."
puts "First, lets get acquainted. What's your first name?"
  user_input = gets.chomp
puts "Thanks! #{user_input}, let's get started on creating your diary entries!"
puts "-----------------------------------------------------"

entry = Diary.new
puts "Please enter a Title:"
title_input = gets.chomp
entry.add_title(title_input)
