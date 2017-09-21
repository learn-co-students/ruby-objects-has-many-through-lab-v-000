require 'pry'

class Doctor

  attr_accessor :name, :patients, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
  end

  def patients
    @appointments.collect do |time|
      time.patient
      binding.pry
    end
  end
end
