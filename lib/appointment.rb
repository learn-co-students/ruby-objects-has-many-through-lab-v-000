class Appointment

  attr_accessor :name, :doctor, :appointment, :patient

  def initialize(appointment, doctor)
    @appointment = appointment
    @doctor = doctor
    doctor.add_appointment(self)
  end

end