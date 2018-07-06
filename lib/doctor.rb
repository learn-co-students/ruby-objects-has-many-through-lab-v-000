require_relative 'appointment'
require_relative 'patient'
class Doctor

  @@all = []

  def self.all
    @@all
  end

  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

  def new_appointment(patient, time)
    Appointment.new(self, patient, time)
  end

  def appointments
    Appointment.all.select{|apt| apt.doctor == self}
  end

  def patients
    Patient.all.select{|p| p.doctor = self}
  end

end
