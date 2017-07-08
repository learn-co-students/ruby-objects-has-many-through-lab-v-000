class Appointment
  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.add_appointment(self)
  end

  attr_accessor :doctor, :patient

end
