require 'pry'
class Doctor
  attr_accessor :name, :date, :patient, :doctor
  
  def initialize(name)
    @name = name  
    @appointments = []
  end
  
  def add_appointment(appointment)
    self.appointments << appointment
    appointment.doctor = self  
  end
  
  def appointments
    @appointments
  end
  
  def patient
  end
    
  def patients 
    patients = []
    patients = @appointments.collect do |x|
      x.patient 
    end 
    patients
  end 
  
  
  
end 