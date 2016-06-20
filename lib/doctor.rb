require 'pry'
class Doctor
  attr_accessor :name, :patient

  def initialize(name)
    @name = name
    @appointments = []

  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
    binding.pry
  end

  def appointments
    @appointments

  end

  def patients




  end
end
