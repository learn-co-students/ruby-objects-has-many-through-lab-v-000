require 'pry'

class Doctor
  attr_accessor :name, :appointments

  def initialize(name)

    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    #binding.pry
    @appointments << appointment
    appointment.doctor = self
  end

  def patients
    #binding.pry
    @appointments.collect{|appointment| appointment.patient}
  end  

  def appointments
    @appointments
  end
  
  
end