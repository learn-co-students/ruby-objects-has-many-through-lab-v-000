class Appointment
  
  attr_accessor :patient, :date, :doctor
  
  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.add_appointment(self)
  end
  
end