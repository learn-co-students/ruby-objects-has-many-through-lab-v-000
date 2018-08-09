class Appointment
  attr_accessor :patient, :doctor, :date
  
  @@all = [ ]
  
  def initialize(patient, doctor, date)
    @@all << self
    @patient = patient
    @doctor = doctor
    @date = date
  end
  
  def self.all
    @@all
  end
  
  
  
  
  
  
  
end