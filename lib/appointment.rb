class Appointment 
  attr_accessor :patient, :doctor, :appointment 
  
  @@all = []
  
  def initialize(patient, doctor, appointment)
    @doctor = doctor
    @patient = patient
    @appointment = appointment
    @@all << self 
  end
  
  def self.all 
    @@all
  end
end