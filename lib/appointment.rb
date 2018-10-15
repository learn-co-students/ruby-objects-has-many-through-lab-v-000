class Appointment
  @@all = []
  
  attr_accessor :date, :patient, :doctor
  
  def initialize(date, patient, doctor)
    @date = "Monday, August 1st"
    @patient = patient
    @doctor = doctor
    @@all << self
   
  end
  
  def self.all
    #binding.pry
    @@all 
  end

  
  
  
  
    
    
  
end