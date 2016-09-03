class Appointment

  attr_accessor :date
  attr_reader :doctor, :patient

  def initialize(date, doctor)
    self.date = date
    self.doctor = doctor
  end

  def doctor=(doctor)
    @doctor = doctor
    doctor.add_appointment(self) unless doctor.appointments.include?(self)
  end

  def patient=(patient)
    @patient = patient
    patient.add_appointment(self) unless patient.appointments.include?(self)
  end

end
