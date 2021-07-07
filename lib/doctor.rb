require 'pry'

class Doctor
  
  attr_accessor :name, :appointments, :patients
  
  @@all = []
   
   def initialize(name)
     @name = name 
     @appointments = []
     @patients = []
     @@all << self
   end 
   
   def self.all
     @@all
   end 
   
   def new_appointment(patient, date)
     appt = Appointment.new(date, patient, self)
     @appointments << appt 
     @patients << patient
     Appointment.all << appt 
     appt 
   end  
   
end 