require 'pry'

class Vehicle
  attr_reader :wheels

  def initialize
    puts 'Parent constructor'
  end

  def move
    "I am moving on my #{wheels} wheels"
  end
end

class Car < Vehicle
  def initialize
    @wheels = 4
    super
  end

  # def move
  #   puts 'I take up space'
  #   result = super
  #   puts result
  # end
end

car = Car.new

binding.pry

# class C_Floating_Point
#   attr_reader :value

#   def initialize(value)
#     @value  = value
#   end

#   def divide(divide_by)
#     value / divide_by
#   end
#   def x(divide_by)
#     value / divide_by
#   end
# end

# class C_Integer < C_Floating_Point
#   def divide(divide_by)
#     result = x divide_by
#     result.round
#   end
# end
