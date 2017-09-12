require 'pry'
class Doctor

  attr_accessor :name, :appointments, :appointment, :patient, :doctors

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    appointment.doctor = self
    @appointments << appointment
  end

  def patients
    appointments.collect{|appointment| appointment.patient}
  end
end
