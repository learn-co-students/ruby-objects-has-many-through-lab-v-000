class Appointment
  
  attr_accessor :date, :patient, :doctor
  
  @@all = []
  
  def self.all
    @@all
  end 
  
  def initialize(some_patient, some_doctor, date)
    @date = date
    @patient = some_patient
    @doctor = some_doctor
    @@all << self
  end 
  
  
  
  
  
end  