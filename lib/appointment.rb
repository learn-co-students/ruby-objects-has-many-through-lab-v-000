class Appointment

attr_accessor :appointment, :doctor, :appointment, :patient

  def initialize(appointment,doctor)
    @appointment = appointment
    @doctor = doctor
    doctor.add_appointment(self)
  end

end
