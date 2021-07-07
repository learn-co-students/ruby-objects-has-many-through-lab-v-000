class Appointment
  attr_accessor :doctor, :patient, :date

  def initialize(date, doctor)
    @doctor = doctor
    doctor.appointments << self
    @date = date
  end

  def doctor
    @doctor
  end

  def patient
    @patient
  end

end
