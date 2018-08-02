class Appointment
  
  @@all = []
  
  attr_accessor :doctor, :patient, :name
  
  def initialize(doctor, patient)
    @doctor = doctor
    @patient = patient
    @date = date
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end