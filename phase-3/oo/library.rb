# Library => books, shelves, sections, librarian, members
# Book =>  cover, title, language, available,
# Section => shelves, name
# Shelf => capacity, books

require 'pry'

class Book
  attr_accessor :is_available, :title
  attr_reader :language
  attr_writer :isbn

  def initialize(title, language)
    @title = title
    @language = language
    @is_available = true
  end
end

book = Book.new 'Ruby 102', 'English'

binding.pry