require 'pry'
class Doctor
  attr_reader :name 
  attr_accessor :appointments
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
  end
  
  def self.all 
    @@all
  end
  
  def new_appointment(patient, date)
    appointment = Appointment.new(patient, self, date)
    self.appointments << appointment
    appointment
  end
  
  def patients 
    Appointment.all.select.collect {|appointment| appointment.patient if appointment.doctor == self}
  end 

    
  
end