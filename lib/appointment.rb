class Appointment 
  attr_accessor  :date, :patient, :doctor 
  
  @@all = []
  
  def self.all 
    @@all
  end
  
  def initialize(patient, date, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end
end