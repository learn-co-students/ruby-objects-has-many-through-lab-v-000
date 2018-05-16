class Appointment 
  @@all = []
  attr_accessor :date, :name, :doctor 
  attr_reader :patient
  def initialize(date,patient,doctor)
    @date = date
    @patient = patient 
    @doctor = doctor
    @@all << self 
  end 
  def self.all 
    @@all 
  end 
  
end 
  