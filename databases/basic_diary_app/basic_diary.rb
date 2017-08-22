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
    # - The user can look through the diary entries to find the one they want to Edit
    # -
  # - Delete entry

# require gems
  require 'sqlite3'
  require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("basic_diary.db")
db.results_as_hash = true

# Fancy string delimiter

create_table_cmd = <<-SQL
  CREATE TABLE diary(
    id INTEGER PRIMARY KEY,
    title VARCHAR(255),
    entry_date DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
    body VARCHAR(255),
    mood_id INT,
    FOREIGN KEY (mood_id) REFERENCES moods(id)
  )
SQL
=begin
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS moods(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)
  )
SQL
=end
# create a diary table (if it's not there already)

db.execute(create_table_cmd)

# Diary Code

  def add_title(db, title)
    db.execute("INSERT INTO diary (title) VALUES (?)", [title])
  end

  def add_body(db, body)
    db.execute("INSERT INTO diary (body) VALUES (?)", [body])
  end

  def add_mood(db, mood)
    db.execute("INSERT INTO diary (mood) VALUES (?)", [mood])
  end

  def edit_title(title_edit)
    db.execute("UPDATE diary SET title=(?) WHERE title=(?)", [title])
  end

  def edit_body(body_edit)
    db.execute("UPDATE diary SET body=(?) WHERE body=(?)", [body])
  end

  def edit_mood(mood_edit)
    db.execute("UPDATE diary SET mood=(?) WHERE mood=(?)", [mood])
  end


# User Interface

puts "Welcome the Basic Diary for Extraordinary People"
puts "Thank you for choosing El Ruby de la Paz for your diary needs."
puts "First, lets get acquainted. What's your first name?"
  user_input = gets.chomp
puts "Thanks! #{user_input}, let's get started!"
puts "-----------------------------------------------------"

puts "What would you like to do?"
puts "-- Type 'add' to add a new entry."
puts "-- Type 'edit' to edit a previous entry."
puts "-- Type 'display' to display all entries."
puts "-- Type 'delete' to delete an entry."
puts "Please press 'enter' after your selection."

choice = gets.chomp.downcase

case choice
when 'add'
  puts "Please enter a Title:"
  title_input = gets.chomp
  add_title(db, title_input)

  puts "Please type your diary entry: (press 'enter' when you are finished.)"
  body_input = gets.chomp
  add_body(db, body_input)
  puts body_input

  puts "Please enter the corresponding number for your current mood:"
  puts "1|Excited 2|Happy 3|Content 4|Satisfied 5|Tired 6|Sleepy 7|Nonchalant 8|Disappointed 9|Angry 10|Dismall 11|Enraged 12|Apathetic 13|Nervous"
  mood_input = gets.chomp.to_i
  add_mood(db, title_input)
when 'edit'
  puts "-- Type 'list' to view a list of previous entries."
  puts "Otherwise, please type the title of the entry you wish to edit:"
  edit_choice = gets.chomp.downcase
  case edit_choice
  when 'list'
    db.execute("SELECT * FROM diary")
    puts "Please enter the title you wish to edit:"

    title_for_the_edit = gets.chomp.downcase
    
    puts "What do you wish to edit?"
    puts "-- Type 'title' to edit the title."
    puts "-- Type 'body' to edit your entry."
    puts "-- Type 'mood' to edit your mood."

  else

  end
end
