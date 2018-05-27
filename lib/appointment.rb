class Appointment
  attr_accessor :date, :patient, :doctor

  def initialize(patient,doctor,date)
    @date = date
    @doctor = doctor
    @patient = patient
  # binding.pry
    @@all << self
  end
  
  @@all = []
  
  def self.all 
   @@all
  end
end