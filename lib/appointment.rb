class Appointment
  attr_accessor :appointment, :doctor, :patient

  def initialize(appointment, doctor)
    @appointment = appointment
    doctor.add_appointment(self)
  end

end