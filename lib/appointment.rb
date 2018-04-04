class Appointment
  attr_accessor :date, :doctor, :patient
  
  def initialize(date, doctor)
    @date = date 
    @doctor = doctor 
    doctor.appointments << self
  end
  
  def patient
    self.patient = @patient
  end
  
  def doctor 
    self.doctor = @doctor
  end
    
    
end