# Library => books, shelves, sections, librarian, members
# Book =>  cover, title, language, available,
# Section => shelves, name
# Shelf => capacity, books
# Member =>

require 'pry'

class Book
  attr_accessor :is_available, :title
  attr_reader :language, :rating, :author
  attr_writer :isbn

  @@books = []

  def self.copy(book)
    Book.new book.title, book.language, book.rating, book.author
  end

  def self.find_books_by_language(language)
    @@books.select { |book| book.language == language }
  end

  def self.count_by_language
    @@books.each_with_object({}) do |book, acc|
      if acc.key? book.language
        acc[book.language] += 1
      else
        acc[book.language] = 1
      end
    end
  end

  def self.find_books_by_author(author)
    @@books.select { |book| book.author == author }
  end

  def initialize(title, language, rating, author)
    @title = title
    @language = language
    @rating = rating
    @is_available = true
    @author = author

    # author.books << self
    @@books << self
  end
end

class Childrens_Book < Book
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
    verify_card(card_number)
    authorize_card(card_number)

    @card_number = card_number
  end

  def pay_late_fee
    # pay with card @card_number
  end

  private

  def verify_card(card_number); end

  def authorize_card(card_number); end

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

class Author
  attr_accessor :pen_name

  def initialize(pen_name)
    @pen_name = pen_name
    # @books = []
  end

  def pen_name_with_suffix
    @random = Date.now
    "#{pen_name} blah"
  end

  def books
    Book.find_books_by_author self
  end
end

alice = Author.new 'bob'

ruby101 = Book.new 'Ruby 101', 'English', 'G', alice
ruby102 = Book.new 'Ruby 102', 'English', 'R', alice
ruby101_copy = Book.copy ruby101

kidBook1 = Childrens_Book.new 'Numbers 101', 'English', 'K', alice
kidBook2 = Childrens_Book.new 'Numbers 102', 'French', 'K', alice
kidBook3 = Childrens_Book.new 'Numbers 103', 'French', 'K', alice

# bob = Member.new 'Bob', 16, 34_234_324
# jim = Member.new 'Jim', 20, 34_234_324
# jim.save_card '4242424242424242'

# library = Library.new

# library.add_books [ruby101, ruby102, kidBook1, kidBook2, kidBook3, ruby101_copy]
# library.add_members [bob, jim]

binding.pry


