require 'sqlite3'

db = SQLite3::Database.new("shopping.db")
db.results_as_hash = true

create_users_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS users (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)
  )
SQL

create_items_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS items (
    item_id INTEGER PRIMARY KEY, 
    item_name VARCHAR(255),
    item_quantity INT,
    user_id INT, 
    FOREIGN KEY (user_id) REFERENCES users(id)
  )
SQL

db.execute(create_users_table_cmd)
db.execute(create_items_table_cmd)

def create_user(db, login_name)
  db.execute("INSERT INTO users (name) VALUES (?)", [login_name])
end

current_user = nil
def login(db, login_name)
  current_user = db.execute("SELECT user_id FROM users WHERE name = ?", [login_name])
end
# def create_user(db, supplied_name)
#   if db.execute(create_users_table_cmd).include? supplied_name
#     puts "already in there"
#   else
#     db.execute("INSERT INTO users (name) VALUES (?)", [name])
#   end
# end

def create_list(db, item_name, item_quantity)
  db.execute("INSERT INTO items (item_name, item_quantity) VALUES (?, ?)", [item_name, item_quantity])
  list_hash = {}
  list_hash[item_name] = item_quantity
end

# driver code
puts "Do you want to register or login"
user_choice = gets.chomp

  if user_choice == "register"
    puts "What is your name you want to register?"
    login_name = gets.chomp
    create_user(db, login_name)

  elsif user_choice == "login"
    puts "Please enter your registered name"
    login_name = gets.chomp
    login(db, login_name)
  end
      
puts "Welcome to #{login_name}'s list"

  valid_input = false
  until valid_input

  puts "What item would you like to add?"
  item_name = gets.chomp

  puts "How many do you need?"
  item_quantity = gets.chomp.to_i

  create_list(db, item_name, item_quantity)

  puts "If you need to enter another item, type yes. If that was all, type quit"
  user_answer = gets.chomp

    if user_answer == "yes"
      valid_input = false

    elsif user_answer == "quit"
      valid_input = true

    else
      puts "Unrecognizable answer. Try again"
      break
    end
  end

# view_table = <<-SQL
#   SELECT * FROM users
# SQL

# db.execute(view_table)

begin
    
    db = SQLite3::Database.open"shopping.db"
    db.results_as_hash = true
        
    # ary = db.execute ("SELECT * FROM items WHERE user_id = id")  
    ary = db.execute ("SELECT * FROM items, users WHERE items.user_id = users.id")  
        
    ary.each do |row|
        printf "%s %s\n", row['item_name'], row['item_quantity']
    end
             
# rescue SQLite3::Exception => e 
    
#     puts "Exception occurred"
#     puts e
    
# ensure
#     db.close if db
end
#   begin
    
#     db = SQLite3::Database.open"shopping.db"
#     db.results_as_hash = true
        
#     ary = db.execute "SELECT * FROM users, items JOIN items ON users.item_id = items.item_id"    
        
#     ary.each do |row|
#         printf "%s %s\n", row['item_name'], row['item_quantity']
#     end
             
# rescue SQLite3::Exception => e 
    
#     puts "Exception occurred"
#     puts e
    
# ensure
#     db.close if db
# end
  
    
# rescue SQLite3::Exception => e 
    
#     puts "Exception occurred"
#     puts e
    
# ensure
#     stm.close if stm
#     db.close if db
# end



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