require 'sqlite3'

db = SQLite3::Database.new("shopping.db")
# db.results_as_hash = true

create_items_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS items (
    item_id INTEGER PRIMARY KEY, 
    item_name VARCHAR(255),
    item_quantity INT,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(person_id)
    )
  SQL
# create_items_table_cmd = <<-SQL
#   CREATE TABLE IF NOT EXISTS items (
#     item_id INTEGER PRIMARY KEY, 
#     item_name VARCHAR(255),
#     item_quantity INT,
#     user_id INT, 
#     FOREIGN KEY (user_id) REFERENCES users(person_id)
#   )
# SQL
create_users_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS users (
    person_id INTEGER PRIMARY KEY,
    name VARCHAR(255)
    )
  SQL

# create_users_table_cmd = <<-SQL
#   CREATE TABLE IF NOT EXISTS users (
#     person_id INTEGER PRIMARY KEY,
#     name VARCHAR(255)
#   )
# SQL

db.execute(create_items_table_cmd)
db.execute(create_users_table_cmd)

def register_user(db, login_name)
  db.execute("INSERT INTO users(name) VALUES (?)", [login_name])
  login(db, login_name)
end

def login(db, login_name)
  results = db.execute("SELECT person_id FROM users WHERE name = ?", [login_name])
  if results.length > 0
    results[0][0]
  else
    nil
  end
  # db.execute("SELECT user_id FROM users WHERE name = ?", [login_name])
  # db.execute("SELECT user_id FROM users WHERE name = ?", [login_name])
end
# def create_user(db, supplied_name)
#   if db.execute(create_users_table_cmd).include? supplied_name
#     puts "already in there"
#   else
#     db.execute("INSERT INTO users (name) VALUES (?)", [name])
#   end
# end

def add_item(db, item_name, item_quantity, current_user)
  db.execute("INSERT INTO items (item_name, item_quantity, user_id) VALUES (?, ?, ?)", [item_name, item_quantity, current_user])
  # list_hash = {}
  # list_hash[item_name] = item_quantity
end


# create delete item method
def delete_item(db, item_name, current_user)
  db.execute("DELETE FROM items WHERE item_name = ? AND user_id = ?", [item_name, current_user])
end
# current_user = login(db, "Nano")
# create_list(db, "carrots", 1, current_user)

# ary = db.execute("SELECT * FROM items WHERE user_id = ?", [current_user])

# p ary
def print_list(db, current_user)
  results = db.execute("SELECT * FROM items WHERE user_id = ?", [current_user])
  results.each do |item|
    puts "#{item[1]} x#{item[2]}"
  end
end




# driver code

current_user = nil

while current_user == nil
  puts "Do you want to register or login"
  user_choice = gets.chomp

  if user_choice == "register"
    puts "What is your name you want to register?"
    login_name = gets.chomp
    current_user = register_user(db, login_name)
  elsif user_choice == "login"
    puts "Please enter your registered name"
    login_name = gets.chomp
    current_user = login(db, login_name)
  end 
end

      
puts "Welcome to #{login_name}'s list"
puts
print_list(db, current_user)
puts

# handle incorrect inputs
should_stop = false
until should_stop

  puts "Would you like to 'add' an item, 'view' the list, 'delete' an item, or 'exit'?"
  response = gets.chomp
  if response == "add"
    puts "What item would you like to add?"
    item_name = gets.chomp

    puts "How many do you need?"
    item_quantity = gets.chomp.to_i

    add_item(db, item_name, item_quantity, current_user)

  elsif response == "view"
    puts
    print_list(db, current_user)

  elsif response == "delete"
    puts "What do you want to delete?"
    item_name = gets.chomp

    delete_item(db, item_name, current_user)  
    
  elsif response == "exit"
    should_stop = true
  end
  puts
end

# # view_table = <<-SQL
# #   SELECT * FROM users
# # SQL

# # db.execute(view_table)

# begin
    
#     db = SQLite3::Database.open"shopping.db"
#     # db.results_as_hash = true
        
#     # ary = db.execute ("SELECT * FROM items")
#     # ary = db.execute ("SELECT * FROM items WHERE person_id = 1")
#     # ary = db.execute ("SELECT * FROM items WHERE user_id = id")  
#     # ary = db.execute ("SELECT * FROM items, users WHERE items.user_id = users.id")  
#     ary = db.execute ("SELECT items.item_name, items.item_quantity FROM items JOIN users ON items.user_id = users.person_id")
        
#     ary.each do |row|
#         printf "%s %s\n", row['item_name'], row['item_quantity']
#     end
             
# rescue SQLite3::Exception => e 
    
#     puts "Exception occurred"
#     puts e
    
# ensure
#     db.close if db
# end
# #   begin
    
# #     db = SQLite3::Database.open"shopping.db"
# #     db.results_as_hash = true
        
# #     ary = db.execute "SELECT * FROM users, items JOIN items ON users.item_id = items.item_id"    
        
# #     ary.each do |row|
# #         printf "%s %s\n", row['item_name'], row['item_quantity']
# #     end
             
# # rescue SQLite3::Exception => e 
    
# #     puts "Exception occurred"
# #     puts e
    
# # ensure
# #     db.close if db
# # end
  
    
# # rescue SQLite3::Exception => e 
    
# #     puts "Exception occurred"
# #     puts e
    
# # ensure
# #     stm.close if stm
# #     db.close if db
# # end



# # might not need the add item since it is the same formula for the create list method
# # def add_item(db, list_hash, item, quantity)
# #   db.execute("INSERT INTO items (item_name, item_quantity) VALUES (?, ?)", [item_name, item_quantity])

# # end

# # def create_kitten(db, name, age)
# #   db.execute("INSERT INTO kittens (name, age) VALUES (?, ?)", [name, age])
# # end

# # 10000.times do
# #   create_kitten(db, Faker::Name.name, 0)
# # end