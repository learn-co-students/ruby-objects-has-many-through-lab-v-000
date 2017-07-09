class Appointment
  attr_accessor :date, :doctor, :patient

  def initialize(date, doctor)
    self.date = date
    self.doctor = doctor
    doctor.appointments << self
  end
end
