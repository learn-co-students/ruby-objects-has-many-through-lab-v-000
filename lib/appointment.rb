class Appointment
  attr_accessor :date, :doctor, :patient


  def initialize(date, doctor)
    doctor.add_appointment(self)
    @doctor = doctor
  end

  def doctor()
    @doctor
  end

  def patient()
    @patient
  end
end
