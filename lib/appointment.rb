class Appointment
  attr_accessor :date, :patient, :doctor
    
  @@all = []
  
  def self.all()
    @@all
  end
  
  def initialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
  end
  
end

