class Appointment
  attr_accessor :date, :doctor, :appointment, :patient
  
  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.add_appointment(self)
    #patient.add_appointment(self)
  end
  
  
end