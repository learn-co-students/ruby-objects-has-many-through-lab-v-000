class Appointment

  attr_accessor :doctor, :date, :appointments, :patient

  def initialize(date, doctor)
    @doctor = doctor
    @date = date
    self.doctor = doctor
    doctor.add_appointment(self)
  end

  def patient
    @patient
  end

  def doctor
    @doctor
  end

end
