class Appointment
  attr_accessor :date, :doctor, :patient

  def initialize (date_str, doctor)
    @date = date_str
    doctor.add_appointment(self)
    @doctor = doctor
  end
  
end