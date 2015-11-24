
require 'pry'
class Patient
  attr_accessor :name, :appointments 
  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(string)
    self.appointments << string 
    string.patient = self
  end 

  def doctors
    @appointments.collect {|doctor| doctor.doctor}
  end 


end 