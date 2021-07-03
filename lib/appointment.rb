class Appointment
  attr_accessor :date, :doctor, :patient

  def initialize(date, doctor)
    @date = date
    @doctor = doctor
    doctor.add_appointment(self)
    # patient.add_appointment(self)
  end

  def patient
    @patient
  end

  def doctor
    @doctor
  end
end
