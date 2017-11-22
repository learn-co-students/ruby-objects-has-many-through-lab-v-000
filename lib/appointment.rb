class Appointment
  attr_accessor :doctor
  attr_reader :date, :appointments

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.appointments << self
  end
end
