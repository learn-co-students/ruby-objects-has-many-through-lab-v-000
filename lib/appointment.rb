class Appointment
  
  attr_accessor :patient 
  
  @@all = []
  
  def initialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor 
    @date = date
  end 
    
  def self.all 
    @@all 
  end 
  
  def patient 
  end 
  def doctor 
  end 
  
end   