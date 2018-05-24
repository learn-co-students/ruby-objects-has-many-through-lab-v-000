require 'pry'
class Doctor

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments

  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end
end
