class Appointment
  attr_accessor :date, :doctor, :patient

  def initialize(date, doctor, patient = "")
    @date = date
    @doctor = doctor
    @patient = patient
    doctor.appointments << self
  end
end