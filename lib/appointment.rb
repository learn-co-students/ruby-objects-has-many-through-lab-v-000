class Appointment
  attr_accessor :date, :patient, :doctor

  def initialize(patient,doctor,date)
    @date = date
    @doctor = doctor
    @patient = patient
    @@all << self
  end
  
  @@all = []
  
  def self.all 
   @@all
  end
end