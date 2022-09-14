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

  @@books = []

  def self.copy(book)
    Book.new book.title, book.language, book.rating
  end

  def self.find_books_by_language(language)
    @@books.select { |book| book.language == language }
  end

  def self.get_count_by_language
    @@books.reduce({}) do |acc, book|
      if acc.has_key? book.language
        acc[book.language] += 1
      else
        acc[book.language] = 1
      end
      acc
    end
  end

  def initialize(title, language, rating)
    @title = title
    @language = language
    @rating = rating
    @is_available = true

    @@books << self
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
    @card_number = ''
  end

  def borrow(book)
    @books << book if can_borrow? book
  end

  def save_card(card_number)
    # verify the card
    # authorize the card for subscription
    @card_number = card_number
  end

  def pay_late_fee
    # pay with card @card_number
  end

  private

  def can_borrow?(book)
    return false if @books.count >= 5
    return @age >= 18 if book.rating == 'R'

    true
  end
end

class Library
  def initialize
    @books = []
    @members = []
  end

  def add_books(books)
    books.each { |book| @books << book }
  end

  def add_members(members)
    members.each { |member| @members << member }
  end
end

ruby101 = Book.new 'Ruby 101', 'English', 'G'
ruby102 = Book.new 'Ruby 102', 'English', 'R'
ruby101_copy = Book.copy ruby101

kidBook1 = ChildrensBook.new 'Numbers 101', 'English', 'K'
kidBook2 = ChildrensBook.new 'Numbers 102', 'French', 'K'
kidBook3 = ChildrensBook.new 'Numbers 103', 'French', 'K'

bob = Member.new 'Bob', 16, 34_234_324
jim = Member.new 'Jim', 20, 34_234_324

library = Library.new

library.add_books [ruby101, ruby102, kidBook1, kidBook2, kidBook3, ruby101_copy]
library.add_members [bob, jim]

binding.pry
