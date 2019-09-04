class Appointment
  attr_accessor :doctor, :patient

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
  end

  def doctor
    @doctor.appointments << self
    @doctor
  end
end
