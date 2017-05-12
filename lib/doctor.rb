require 'pry'

class Doctor
  attr_accessor :name, :patients

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end

  def appointments
    @appointments
  end

  def patients
    @appointments.collect { |e| e.patient }
  end
end
