require 'pry'

class Patient

  attr_accessor :name, :patient, :appointment

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    #binding.pry
    @appointments << appointment
    appointment.patient = self
  end

  def appointments
    @appointments
  end

  def doctors
    @appointments.collect do |i|
      i.doctor
    end
  end
end