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
=begin
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS diary(
    id INTEGER PRIMARY KEY,
    title VARCHAR(255),
    entry_date DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
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

#db.execute(create_table_cmd)

# Diary Code

  def add_title(db, title)
    db.execute("INSERT INTO diary (title) VALUES (?)", [title])
  end

  def add_body(db, body)
    db.execute("INSERT INTO diary (body) VALUES (?)", [body])
  end

  def add_mood(db, mood)
    db.execute("INSERT INTO diary (mood_id) VALUES (?)", [mood_id])
  end

  def edit_title(db, title, id)
    db.execute("UPDATE diary SET title=(?) WHERE id=(?)", [title, id])
  end

  def edit_body(db, body, id)
    db.execute("UPDATE diary SET body=(?) WHERE id=(?)", [body, id])
  end

  def edit_mood(db, mood, id)
    db.execute("UPDATE diary SET mood_id=(?) WHERE id=(?)", [mood_id, id])
  end

  def title_edit_title(db, title, prev_title)
    db.execute("UPDATE diary SET title=(?) WHERE title=(?)", [title, title])
  end

  def title_edit_body(db, body, prev_title)
    db.execute("UPDATE diary SET body=(?) WHERE title=(?)", [body, title])
  end

  def title_edit_mood(db, mood, prev_title)
    db.execute("UPDATE diary SET mood_id=(?) WHERE title=(?)", [mood_id, title])
  end

  def delete_entry(db, id)
    db.execute("DELETE FROM diary WHERE id=(?)", [id])
  end

# User Interface
mood_hash = {
  "Excited" => 1,
  "Happy" => 2,
  "Content" => 3,
  "Satisfied" => 4,
  "Tired" => 5,
  "Sleepy" => 6,
  "Nonchalant" => 7,
  "Disappointed" => 8,
  "Angry" => 9,
  "Dismall" => 10,
  "Enraged" => 11,
  "Apathetic" => 12,
  "Nervous" => 13
}


puts "Welcome the Basic Diary for Extraordinary People"
puts "Thank you for choosing El Ruby de la Paz for your diary needs."
puts "First, lets get acquainted. What's your first name?"
  user_input = gets.chomp
puts "Thanks! #{user_input}, let's get started!"
puts "-----------------------------------------------------"

loop do

  puts "What would you like to do?"
  puts "-- Type 'add' to add a new entry."
  puts "-- Type 'edit' to edit a previous entry."
  puts "-- Type 'display' to display all entries."
  puts "-- Type 'delete' to delete an entry."
  puts "-- Type 'quit' to exit the diary."
  puts "Please press 'enter' after you type your selection."

  choice = gets.chomp.downcase
  break if choice == 'quit'

  case choice
#Add a new entry
  when 'add'
    puts "Please enter a Title:"
    title_input = gets.chomp
    add_title(db, title_input)

    puts "Please type your diary entry: (press 'enter' when you are finished.)"
    body_input = gets.chomp
    add_body(db, body_input)
    puts body_input

    puts "Please enter the corresponding number for your current mood:"
    mood_hash.each do |mood, id|
      puts "#{mood}: #{id}"
    end
    mood_input = gets.chomp.to_i
    add_mood(db, title_input)
#Edit a entry
  when 'edit'
    puts "(Please note that if you decide to edit any part of your entries, your new entry will override the previous, so if you only want to edit a few words or lines, please copy and paste the original in from the query.)"
    puts "-- Type 'list' to view a list of previous entries."
    puts "Otherwise, please type the title of the entry you wish to edit (titles are case sensitive):"
    edit_choice = gets.chomp.downcase

    case edit_choice
  #List entries to edit
    when 'list'
      diary_entries = db.execute("SELECT * FROM diary")
      diary_entries.each do |id, title, body, mood|
        puts "ID: #{id}"
        puts "Title: #{title}"
        puts "Entry: #{body}"
        puts "Mood: #{mood}"
      end
      puts "Please enter the entry id you wish to edit:"

      entry_id = gets.chomp.to_i

      puts "What do you wish to edit?"
      puts "-- Type 'title' to edit the title."
      puts "-- Type 'body' to edit your entry."
      puts "-- Type 'mood' to edit your mood."

      edit_input = gets.chomp.downcase

      case edit_input
      when 'title'
        puts "Please type the new title:"
        new_title = gets.chomp
        edit_title(db, new_title, entry_id)
        puts "Your updated title is: #{new_title}"
      when 'body'
        puts "Please copy and paste original entry and edit, OR type in new entry."
        new_body = gets.chomp
        edit_body(db, new_body, entry_id)
      when 'mood'
        puts "Please type the number that corresponds to the new mood:"
        mood_hash.each do |mood, id|
          puts "#{mood}: #{id}"
        end
        new_mood = gets.chomp.to_i
        edit_mood(db, new_mood, entry_id)
        #puts "Your updated mood is: #{mood_hash[new_mood]}"
    #Edit entry based on title
      else
        title_entry = gets.chomp

        puts "What do you wish to edit?"
        puts "-- Type 'title' to edit the title."
        puts "-- Type 'body' to edit your entry."
        puts "-- Type 'mood' to edit your mood."

        edit_input = gets.chomp.downcase

        case edit_input
        when 'title'
          puts "Please type the new title:"
          new_title = gets.chomp
          title_edit_title(db, new_title, title_entry)
          puts "Your updated title is: #{new_title}"
        when 'body'
          puts "Please copy and paste original entry and edit, OR type in new entry."
          new_body = gets.chomp
          title_edit_body(db, new_body, title_entry)
        when 'mood'
          puts "Please type the number that corresponds to the new mood:"
          mood_hash.each do |mood, id|
            puts "#{mood}: #{id}"
          end
          new_mood = gets.chomp.to_i
          title_edit_mood(db, new_mood, title_entry)
        end
      end
#Display all entries
  when 'display'
    diary_entries = db.execute("SELECT * FROM diary")
    diary_entries.each do |id, title, body, mood|
      puts "ID: #{id}"
      puts "Title: #{title}"
      puts "Entry: #{body}"
      puts "Mood: #{mood}"
    end
#Delete an entry
  when 'delete'
    diary_entries = db.execute("SELECT * FROM diary")
    diary_entries.each do |id, title, body, mood|
      puts "ID: #{id}"
      puts "Title: #{title}"
      puts "Entry: #{body}"
      puts "Mood: #{mood}"
    end
    puts "Please enter the ID of the entry you wish to delete:"
    delete_id = gets.chomp.to_i
    delete_entry(db, delete_id)
  end
end
end
