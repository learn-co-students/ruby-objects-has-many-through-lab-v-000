class Appointment 
  attr_accessor :date, :patient, :doctor
  @@all = []
  
  def initialize(date, doctor, patient)
    @date = date
    @patient = date
    @doctor = doctor
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end