require 'sqlite3'

def db_connection
  SQLite3::Database.new('pets.db')
end
