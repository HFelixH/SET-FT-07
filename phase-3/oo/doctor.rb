#!/usr/bin/env ruby

require_relative './vehicle'

class Doctor
  attr_accessor :name
end

class Patient
  attr_accessor :name

  def get_appointments
    Appointment.find_by_patient self
  end
end

class Appointment
  attr_accessor :doctor, :patient, :slot

  @@all = []

  def self.find_by_doc; end

  def self.find_by_patient; end
end

# 1 player can belong to multiple teams
# 1 team can have multiple players

doc = Doctor.new 'Alice'
patient = Patient.new 'Bob'

appointment = Appointment.new doc, patient, 'slot-1'

car = Vehicle.new
