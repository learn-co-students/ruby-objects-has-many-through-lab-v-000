class Appointment
  # class variable 
  @@all = []
  
  # attribute accessors
  attr_accessor :date, :patient, :doctor
  
  # class method 
  def self.all 
    @@all
  end 
  
  # instance method
  def initialize(patient, doctor, date)
    @date = date
    @patient = patient 
    @doctor = doctor
    @@all << self
  end
end