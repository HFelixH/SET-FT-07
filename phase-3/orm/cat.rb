require_relative './db'

class Cat
  attr_accessor :name, :age, :breed
  attr_reader :id

  @@connection = db_connection

  def initialize(name, age, breed, id = nil)
    @name = name
    @age = age
    @breed = breed
    @id = id
  end

  def save
    if id.nil?
      @@connection.execute('INSERT INTO cats(name, age, breed) VALUES (?, ?, ?)', name, age, breed) if id.nil?
      @id = @@connection.execute('SELECT last_insert_rowid() from cats')[0][0] if id.nil?
    elsif @@connection.prepare('UPDATE cats SET name = :name, age = :age, breed = :breed WHERE id = :id')
      statement.execute name, age, breed, id
    end

    self
  end

  # def update_name(name)
  #   statement = @@connection.prepare('UPDATE cats SET name = :name WHERE id = :id')
  #   statement.execute name, id unless id.nil?
  #   @name = name
  #   self
  # end

  def delete
    @@connection.execute('DELETE FROM cats WHERE id = ?', id) unless id.nil?
    nil
  end

  def self.all
    results = @@connection.execute('SELECT * FROM cats;')
    build_cats results
  end

  def self.find_cats_by_name(name)
    results = @@connection.execute('SELECT * FROM cats WHERE name = ?', name)
    build_cats results
  end

  def self.build_cats(results)
    results.map do |row|
      Cat.new row[1], row[3], row[2], row[0]
    end
  end

  private_class_method :build_cats
end

# Create, Update, Read, Delete
