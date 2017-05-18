

class Appointment

  attr_accessor :doctor, :patient

  def initialize(date_string, doctor)
    @doctor = doctor
    doctor.add_appointment(self)  
  end
  
end