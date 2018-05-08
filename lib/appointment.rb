class Appointment 
  
  attr_accessor :date , :patient, :doctor
  
  def initialize(date, doctor)
    @date = date 
    @doctor = doctor 
    
    doctor.add_appointment(self)
  end 
  
  def patient 
    @patient
  end 
  
  def doctor
    @doctor
  end 
  
end 