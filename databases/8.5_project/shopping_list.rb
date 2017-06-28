require 'sqlite3'

db = SQLite3::Database.new("shopping.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS users (
    user_id INTEGER PRIMARY KEY,
    name VARCHAR(255)
    item_id INT, 
    FOREIGN KEY (item_id) REFERENCES items(item_id)
  )

  CREATE TABLE IF NOT EXISTS items (
    item_id INTEGER PRIMARY KEY, 
    item_name VARCHAR(255),
    item_quantity INT
    )
SQL

db.execute(create_table_cmd)

def create_user(db, name)
  db.execute("INSERT INTO users (name) VALUES (?)", [name])
end

def create_list(db, list_hash, items, quantity)
  db.execute("INSERT INTO items (item_name, item_quantity) VALUES (?, ?)", [item_name, item_quantity])
  list_hash = {}
  list_hash[item] = []
end

# driver code
puts "Enter your name to access your list"
user_name = gets.chomp

create_user(db, user_name)






# might not need the add item since it is the same formula for the create list method
# def add_item(db, list_hash, item, quantity)
#   db.execute("INSERT INTO items (item_name, item_quantity) VALUES (?, ?)", [item_name, item_quantity])

# end

# def create_kitten(db, name, age)
#   db.execute("INSERT INTO kittens (name, age) VALUES (?, ?)", [name, age])
# end

# 10000.times do
#   create_kitten(db, Faker::Name.name, 0)
# end