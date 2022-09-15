module Searchable
  def find_by_name(name)
    all.select { |item| item.name == name }
  end
end

module Translateable
  module L_To_R
    def translate(language)
      puts "#{name} is now in #{language}"
    end
  end

  module R_To_L
    def translate(language)
      puts "#{name} is now in #{language}"
    end
  end
end

class User
  include Encryptable

  def initialize(password)
    @password = encrypt(password)
  end
end

class Book
  extend Searchable
  include Translateable

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
end

class Arabic_Book < Book
  include Translateable::R_To_L
end

class Record
  extend Searchable

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
  end
end

class Disc
  extend Searchable

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
  end
end
