
class Appointment
  
  attr_accessor :date, :patient, :doctor
  
  @@all = []
  
  def initialize(patient, doctor, date)
    @@all << self
    @patient = patient
    @date = date
    @doctor = doctor
  end
  
  def self.all
    @@all.each do |appointment|
      appointment
    end 
  end
  
end