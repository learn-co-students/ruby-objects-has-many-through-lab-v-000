require 'pry'
class Doctor

  attr_accessor :name, :patient

  def initialize(name)
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
    self.appointments.collect do |appointment|
      #binding.pry
      appointment.patient
    end
  end
end
