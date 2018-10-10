require 'pry'
class Doctor 
  attr_accessor :name, :appointments, :patients   
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @@all << self
    @appointments = []
    @patients = [] 
  end  
  
  
   def self.all 
    @@all 
  end 
  
  
  def new_appointment(patient, date) 
    Appointment.new(patient, self, date) 
  end 
  
  # binding.pry 
  
  
  def appointments 
    Appointment.all.select { |appointment| appointment.doctor == self}
  end  
  
  
  # def add_appointment(appt)
  #   @appointments << appt
  # end

      
  
  def patients 
  appointments.collect { |appointment| appointment.patient}
  end

end
   
  