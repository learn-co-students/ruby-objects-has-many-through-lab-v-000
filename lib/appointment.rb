class Appointment
  attr_accessor :doctor, :patient, :date

  def initialize(date, doctor)
    self.date = date
    self.doctor = doctor if doctor.class == Doctor
    doctor.appointments << self
  end

end
