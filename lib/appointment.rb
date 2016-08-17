class Appointment
  attr_reader :doctor
  attr_accessor :patient

  def initialize(date, doctor)
    @doctor = doctor
    @patients = []
    doctor.add_appointment(self)
  end
end
