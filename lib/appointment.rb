class Appointment
  attr_accessor :doctor, :patient

  def initialize(date, doctor)
    @doctor = doctor
    @patient = patient
    doctor.add_appointment(self)
  end

  def add_appointment(appointment)
    @appointments << appointment
  end
end
