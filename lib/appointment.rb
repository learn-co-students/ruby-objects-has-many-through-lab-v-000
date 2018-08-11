class Appointment
  attr_accessor :doctor, :patient, :date
  
@@all = []

def initialize(doctor, patient, date)
  @doctor = doctor
  @patient = patient
  @date = date
  @@all << self
end 

def self.all
  @@all
end 


end 