class Appointment
  attr_accessor :patient, :doctor, :date
  def initialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date
  end

  def patient
    @patient << self
  end

  def doctor
    @doctor << self
  end
end
