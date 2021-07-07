class Appointment
  attr_accessor :date, :doctor, :patient

  def initialize(date, doctor)
    doctor.add_appointment(self)
    @doctor = doctor
    @date = date
  end

end