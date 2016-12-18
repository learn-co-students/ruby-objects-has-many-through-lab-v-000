class Appointment
  attr_accessor :name
  attr_reader :patient, :doctor

  def initialize(name, doctor)
    @name = name
    self.doctor = doctor
  end

  def patient=(patient)
    raise TypeError unless patient.is_a? Patient
    @patient = patient
    patient.add_appointment(self) unless patient.appointments.include?(self)
  end

  def doctor=(doctor)
    raise TypeError unless doctor.is_a? Doctor
    @doctor = doctor
    doctor.add_appointment(self) unless doctor.appointments.include?(self)
  end
end