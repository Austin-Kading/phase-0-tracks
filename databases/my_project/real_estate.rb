require "sqlite3"



# Make a new database
db = SQLite3::Database.new("relocation.db")

# If one doesn't already exist, create a locations table with id and area
create_locations_table = <<-SQL
  CREATE TABLE IF NOT EXISTS locations(
    id INTEGER PRIMARY KEY,
    area VARCHAR(255)
  )
SQL

# If one doesn't already exist, create a client table with id, name, area desired and max price
create_clients_table = <<-SQL
  CREATE TABLE IF NOT EXISTS clients(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    max_price INT,
    area_id INT,
    FOREIGN KEY (area_id) REFERENCES locations(id)
  )
SQL

# If one doesn't already exist, create a houses table with id, address, area and price
create_houses_table = <<-SQL
  CREATE TABLE IF NOT EXISTS houses(
    id INTEGER PRIMARY KEY,
    address VARCHAR(255),
    price INT,
    area_id INT,
    FOREIGN KEY (area_id) REFERENCES locations(id)
  )
SQL

# Create the tables
db.execute(create_locations_table)
db.execute(create_clients_table)
db.execute(create_houses_table)

# Display the matches for a given client id
def display_matches(db, client_id)

  client = db.execute("SELECT * FROM clients WHERE id = #{client_id}")
  matches = db.execute("SELECT * FROM houses WHERE price <= #{client[0][2]} AND area_id = #{client[0][3]}")
  
  if matches.empty?
    puts "Sorry.  No listings match your search at this time."
  else
    matches.each {|match| puts "#{match[1]} is available for $#{match[2]}"}
  end

end


# Display the locations table and get an area id key
def get_area_id(db)

  puts "Here are the available areas:"

  locations = db.execute("SELECT * FROM locations")
  locations.each {|row| puts "#{row[0]}: #{row[1]}"}

  puts "Please select an area by number:"
  area_id = gets.chomp.to_i

end


# Prompt user for a name.  If name isn't in the clients table, add it
# Return client id (primary key)
def get_client_info(db)

  puts "Please enter your name:"
  name = gets.chomp

  # If no record, prompt for remaining information.
  if (client = db.execute("SELECT * FROM clients WHERE name = '#{name}'")).empty?
    
    puts "Please enter your maximum price:"
    max_price = gets.chomp.to_i

    area_id = get_area_id(db)

    # Add the record and retrieve the primary key
    db.execute("INSERT INTO clients (name, max_price, area_id) VALUES (?, ?, ?)", [name, max_price, area_id])
    client = db.execute("SELECT * FROM clients WHERE name = '#{name}'")
  end

  client[0][0]
end

# Allow a seller to populate houses table with address, price and area
# Display locations table, prompt for area input by key
def update_houses(db)

  puts "Please enter the address of the home you wish to sell:"
  address = gets.chomp.upcase

  # If there's no existing record, prompt for remaining information.
  if (house = db.execute("SELECT * FROM houses WHERE address = '#{address}'")).empty?
    puts "Please enter the price:"
    price = gets.chomp.to_i

    area_id = get_area_id(db)

    db.execute("INSERT INTO houses (address, price, area_id) VALUES (?, ?, ?)", [address, price, area_id])
  end 

end

# Prompt the user for a new location.  If not already in the table, add it.
def update_locations(db)

  puts "Please enter a new location:"
  area = gets.chomp.upcase

  if db.execute("SELECT * FROM locations WHERE area = '#{area}'").empty?
    db.execute("INSERT INTO locations (area) VALUES (?)", [area])
  else
    puts "That location is already in the table."
  end

end


# Add a user interface
puts "Are you buying or selling today?  Please enter B or S:"
input = gets.chomp.downcase
client_type = input == "b" ? "buyer": "seller"

if client_type == "buyer"
  client_id = get_client_info(db)
  display_matches(db, client_id)
else
  until input == "quit"
    puts "Which table would you like to update (enter H for houses, L for locations or 'quit' to quit):"
    input = gets.chomp.downcase

    if input == "l"
      update_locations(db)
    elsif input == "h"
      update_houses(db)
    end
  end
end