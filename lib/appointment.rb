class Appointment

  attr_accessor :date, :doctor

  def initialize0(date, doctor)
    @date = date
    @doctor = doctor
    @appointments = []
  end

  def add_appointment
    @appointments << appointment
    appointment.patient = self
  end

end
