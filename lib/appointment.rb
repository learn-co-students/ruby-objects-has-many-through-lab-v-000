class Appointment
  
  @@all = []
  
  attr_accessor :doctor, :patient, :name, :date
  
  def initialize(patient, doctor, date)
    @doctor = doctor
    @patient = patient
    @date = date
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end