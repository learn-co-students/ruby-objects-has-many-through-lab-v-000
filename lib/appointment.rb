class Appointment 

attr_accessor :patient, :doctor, :date
 
  @@all = []
 
  def initialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
  end
 
  def self.all
    @@all
  end

  def self.patient
    @patient
  end
  
  def self.doctor
    @doctor
  end 
  
end