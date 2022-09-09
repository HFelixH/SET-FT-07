# Library => books, shelves, sections, librarian, members
# Book =>  cover, title, language, available,
# Section => shelves, name
# Shelf => capacity, books
# Member =>

require 'pry'

class Book
  attr_accessor :is_available, :title
  attr_reader :language, :rating
  attr_writer :isbn

  def initialize(title, language, rating)
    @title = title
    @language = language
    @rating = rating
    @is_available = true
  end
end

class ChildrensBook < Book
  attr_accessor :is_educational
  
  @@genre = 'Children'

  def self.genre
    @@genre
  end
end

class Member
  attr_accessor :books, :name
  attr_reader :age, :id

  def initialize(name, age, id)
    @name = name
    @age = age
    @id = id
    @books = []
  end

  def borrow(book)
    binding.pry
    @books << book if can_borrow? book
  end

  def can_borrow?(book)
    return false if @books.count >= 5
    return @age >= 18 if book.rating == 'R'

    true
  end
end

ruby101 = Book.new 'Ruby 101', 'Enligh', 'G'
ruby102 = Book.new 'Ruby 102', 'English', 'R'
bob = Member.new 'Bob', 16, 34_234_324
jim = Member.new 'Jim', 20, 34_234_324


kidBook1 = ChildrensBook.new 'Numbers 101', 'Enligh', 'K' 
kidBook2 = ChildrensBook.new 'Numbers 102', 'Enligh', 'K'
kidBook3 = ChildrensBook.new 'Numbers 103', 'Enligh', 'K'

binding.pry
