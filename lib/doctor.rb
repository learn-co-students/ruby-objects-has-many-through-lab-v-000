class Doctor
  
  attr_accessor :name, :patients
  
  @@all = []
   
   def initialize(name)
     @name = name 
     @patients = []
     @@all << self
   end 
   
   def self.all
     @@all
   end 
   
   def new_appointment(date, patient)
     appt = Appointment.new(date, self, patient)
     @patients << patients 
   end  
   
end 