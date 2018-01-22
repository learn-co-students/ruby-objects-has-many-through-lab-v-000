class Appointment
  attr_accessor :patient, :doctor

  def initialize(date, doctor)
    @doctor = doctor
    @date = date
    @patient = patient
    doctor.appointments << self
  end
end