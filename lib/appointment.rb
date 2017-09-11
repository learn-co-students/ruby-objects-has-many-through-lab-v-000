class Appointment

  attr_accessor :doctor, :patient

  def initialize(date, doctor)
    @date   = date
    @doctor = doctor
    self.doctor = doctor
    doctor.appointments << self
  end
end
