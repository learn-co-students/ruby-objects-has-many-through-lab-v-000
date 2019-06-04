class Appointment
  
  attr_accessor :patient, :doctor 
  
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
  
  def patient 
    @patient 
  end 
  
  def doctor 
    @doctor 
  end 
  
  def doctors
    Doctor.appointments.select do |appointment|
      appointment
    end 
  end 
  
end   