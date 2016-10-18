require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("wine_cellar.db")

# create table
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS wines(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    vintage INT
  )
SQL

db.execute(create_table_cmd)


def fill_wine_cellar(db, name, vintage)
  puts "You just added #{name} with the vintage year of #{vintage} to the cellar."
  db.execute("INSERT INTO wines (name, vintage) VALUES (?, ?)", [name, vintage])
end

def view_cellar(db)
  wine_cellar = db.execute("SELECT * FROM wines")
  wine_cellar.each do |id, name, vintage|
    puts "The wine_cellar currently holds #{vintage} #{name}."
  end
end

def select_by_vintage(db, vintage)
  vintage_selection = db.execute("SELECT * FROM wines WHERE vintage=?", [vintage])
  vintage_selection.each do |id, name|
    puts "I can see you are a person of class and are familiar with good vintage years."
    puts "So I recommend our #{vintage} #{name}."
    puts "\n"
  end
end

def select_by_name(db, name)
  name_selection = db.execute("SELECT * FROM wines WHERE name=?", [name])
  name_selection.each do |id, name, vintage|
    puts "Very nice choice! I recommend our #{vintage} #{name}."
  end
end

# USER INTERFACE

puts "What kind of wine would you like to fill the cellar with?"
wine_name = gets.chomp

puts "What vintage year is this wine?"
wine_vintage = gets.chomp.to_i
fill_wine_cellar(db, wine_name, wine_vintage)
puts "-" * 30
view_cellar(db)
puts "-" * 30









