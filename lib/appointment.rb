class Appointment
  attr_accessor :date, :doctor, :patient

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.add_appointment(self)
  end
  
  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end
end