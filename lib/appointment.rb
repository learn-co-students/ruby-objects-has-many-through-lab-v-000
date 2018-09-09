class Appointment
  attr_accessor :patient, :doctor, :date 
  
  @@all = [] 
  
  def initialize(patient, doctor, date)
    @patient, @doctor, @date = patient, doctor, date
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
end