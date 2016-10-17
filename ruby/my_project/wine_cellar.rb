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

db.execute("INSERT INTO wines (name, vintage) VALUES ('Pinot Gris', 2009)")