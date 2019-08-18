class Appointment
attr_accessor :doctor, :patient
attr_writer :date

  def initialize(date, doctor)
    self.date = date
    self.doctor = doctor
    self.doctor.appointments << self
  end

end