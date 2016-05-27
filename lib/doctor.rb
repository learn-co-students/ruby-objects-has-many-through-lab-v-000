require "pry"
class Doctor
  attr_accessor :name, :appointment, :patient
 

  def initialize(name)
    @appointment = appointment
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
  end

  def appointments
    @appointments
  end

  def patients
  end


end