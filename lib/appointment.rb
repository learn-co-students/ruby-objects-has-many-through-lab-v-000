class Appointment
  
  attr_accessor :date, :doctor, :patient #<= added patient for "belongs to" relationship

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.add_appointment(self)
  end

end