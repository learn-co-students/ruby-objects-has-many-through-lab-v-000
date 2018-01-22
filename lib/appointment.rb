class Appointment
  attr_accessor :doctor, :patient


  def initialize(date, doctor)
    @doctor = doctor
    @date = date
    doctor.appointments << self
  end

  def patient
    @patient
  end

end