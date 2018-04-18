class Appointment
  attr_accessor :date, :doctor 
  
  def initialize(date, doctor)
    @date = "Tuesday, April 17th"
    @doctor = doctor
    doctor.add_appointment(self)
  end 
end 