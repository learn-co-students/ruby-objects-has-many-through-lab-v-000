class Appointment
  attr_accessor :patient, :doctor, :date
  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.appointments << self
  end
end
