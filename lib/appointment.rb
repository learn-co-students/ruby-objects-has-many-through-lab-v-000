class Appointment
  attr_accessor :date
  attr_writer :doctor, :patient

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.add_appointment(self)
  end

  def patient
    @patient
  end

  def doctor
    @doctor
  end

end
