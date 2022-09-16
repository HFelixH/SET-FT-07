require 'pry'

class Person
  @@phone_regex = /^(?:(?:\+?1\s*(?:[.-]\s*)?)?(?:\(\s*([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9])\s*\)|([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9]))\s*(?:[.-]\s*)?)?([2-9]1[02-9]|[2-9][02-9]1|[2-9][02-9]{2})\s*(?:[.-]\s*)?([0-9]{4})(?:\s*(?:#|x\.?|ext\.?|extension)\s*(\d+))?$/

  attr_accessor :phone_number, :name, :dob, :suburb, :state

  def initialize(name:, phone_number:, dob:, suburb:, state:)
    @name = name
    @phone_number = phone_number
    @dob = dob
    @suburb = suburb
    @state = state
  end

  def save_phone_number(phone_number)
    is_valid = phone_number.match(@@phone_regex)

    @phone_number = phone_number if !!is_valid
  end
end

alice = Person.new phone_number: '1234', name: 'Alice', dob: '1/1/2021', suburb: 'xyz', state: 'acme'
bob = Person.new name: 'Bob', phone_number: '4567', dob: '2/2/1993', suburb: 'xyz', state: 'acme'

bob_attributes = {
  name: 'Bob',
  phone_number: '4567',
  dob: '2/2/1993',
  suburb: 'xyz',
  state: 'acme',
  fake: 'faker',
  random: 'random'
}

class SmartPerson < Person
  def initialize(attributes)
    attributes.each do |key, value|
      send("#{key}=", value) if self.class.instance_methods.include? "#{key}".to_sym
    end
    binding.pry
  end

  def print_name
    puts "#{name}"
  end
end

binding.pry
