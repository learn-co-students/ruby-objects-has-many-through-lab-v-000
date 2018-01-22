require 'pry'
class Doctor
  attr_accessor :name
  def initialize(name)
    @name = name
    @appointments = []
  end

  def appointments
    @appointments
  end

  def add_appointment(appointment)
    @appointments << appointment
  end

  def patients
    @appointments.collect do |appointment|
      appointment.patient
    end
  end
end