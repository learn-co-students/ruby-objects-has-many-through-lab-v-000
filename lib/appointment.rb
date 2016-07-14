class Appointment

  attr_accessor :patient, :doctor

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.add_appointment(self)
  end

  def doctor
    @doctor
  end

  def patient
    @patient
  end

end
