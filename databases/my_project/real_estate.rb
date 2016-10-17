require "sqlite3"
require_relative "table_utilities.rb"


# Make a new database
db = SQLite3::Database.new("relocation.db")

# If one doesn't already exist, create a locations table with id and area
create_locations_table = <<-SQL
  CREATE TABLE IF NOT EXISTS locations(
    id INTEGER PRIMARY KEY,
    area VARCHAR(255)
  )
SQL