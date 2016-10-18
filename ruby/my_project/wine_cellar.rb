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

def add_wine(db, name, vintage)
  puts "You just added #{name} with the vintage year of #{vintage} to the cellar."
  db.execute("INSERT INTO wines (name, vintage) VALUES (?, ?)", [name, vintage])
end

def view_cellar(db)
  wine_cellar = db.execute("SELECT * FROM wines")
  wine_cellar.each do |id, name, vintage|
    puts "The wine_cellar currently holds #{vintage} #{name}."
  end
end

view_cellar(db)



