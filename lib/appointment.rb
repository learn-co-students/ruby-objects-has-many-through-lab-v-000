

class Appointment

  attr_accessor :doctor, :date, :patient, :appointment

  def initialize(date, doctor)
    @doctor = doctor
    @date = date
    doctor.add_appointment(self)
  end
  
end