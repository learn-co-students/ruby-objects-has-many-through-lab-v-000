require 'pry'

class Doctor
  attr_accessor :name, :appointment

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    self.appointments << appointment
  end

  def appointments
    @appointments
  end

  def patients
    self.appointments.map {|i| i.patient}
  end
end
