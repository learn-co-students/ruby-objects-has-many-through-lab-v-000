class Appointment 
  @@all = []
  attr_accessible :date, :name, :doctor
  def initialize(date,patient, doctor)
    @date = date
    @patient = patient 
    @doctor = doctor
    @@all << self 
  end 
  def self.all 
    @@all 
  end 
  
end 
  