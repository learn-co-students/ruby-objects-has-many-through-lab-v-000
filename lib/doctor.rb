require 'pry'
class Doctor

  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    self.name= name
    self.class.all<<self
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select {|a| a.doctor == self}
  end

  def patients
    self.appointments.collect do |a| a.patient
      #binding.pry
    end
  end
end
