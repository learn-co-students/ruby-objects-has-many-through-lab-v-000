class Appointment 
  
  attr_accessor :doctor,:patient,:date  
  
  @@all = []
  
  def initialize(patient,doctor,date)
    @patient = patient
    @docter = doctor
    @date = date 
    @@all << self 
   end 
  
   def self.all 
     @@all 
   end 
  
  
end 