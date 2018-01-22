class Appointment
  attr_accessor :date, :doctor, :patient

  def initialize(date = nil, doctor = nil)
    @date = date
    @doctor = doctor
    @patient = nil
    doctor.add_appointment(self)
  end
end