
class Appointment
  attr_accessor :time, :doctor, :patient

  def initialize(time, doctor)
    @time = time
    @doctor = doctor
    doctor.appointments << self
  end

end
