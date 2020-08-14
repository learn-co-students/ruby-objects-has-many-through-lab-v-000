class Appointment
  attr_reader :date
  attr_accessor :doctor, :patient

  def initialize(date, doctor)
    @doctor = doctor
    doctor.add_appointment(self)
  end
end