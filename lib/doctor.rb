#doctors access patients through appts
require 'pry'

class Doctor
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all #writer method for listing out all of the instances stored in the array
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(self, patient, date)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    appointments.map do |appointment|
      appointment.patient
    end
  end
end
