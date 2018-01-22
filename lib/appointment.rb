
class Appointment

  attr_accessor :doctor, :patient

  def initialize(name, doctor)
    @name = name
    @doctor = doctor
    @doctor.appointments << self
  end

end