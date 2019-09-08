require 'pry'

class Patient  
  attr_accessor :name, :doctor, :appointment
  
  def initialize(name)
    @name = name 
    @appointments = []
  end 
  
  def add_appointment(appointment)
    @appointments << appointment 
    appointment.patient = self 
  end 
  
  def appointments
    @appointments
  end
  
  def doctors
    doctors = []
    doctors = @appointments.collect do |s|
      s.doctor 
    end
    doctors 
  end 
  

end 