class Appointment
  attr_accessor :date, :doctor, :patient

  def initialize(date, doctor)
    @date, @doctor = date, doctor
    doctor.add_appointment(self)
  end
end