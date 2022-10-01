require 'json'
require 'pry'
require 'active_record'
require_relative '../server'
require_relative '../db/models/cat'
require_relative '../db/models/owner'

ActiveRecord::Base.logger = ActiveSupport::Logger.new(STDOUT)

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'pets.db'
)
