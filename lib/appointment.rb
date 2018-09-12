class Appointment

  attr_accessor :doctor, :patient, :date 
  @@all = []

  def initialize(doctor, date, patient)
    @@all << self 
    @date = date 
    @doctor = doctor 
    @patient = patient 
    doctor.new_appointment(self) 
  end 
  
  def self.all
    @@all
  end
  
end