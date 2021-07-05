class Appointment
attr_accessor :name, :doctor, :patient

  def initialize (name, doctor)
    @name = name
    @doctor = doctor
    doctor.add_appointment(self)
  end

  def doctor=(doctor)
    @doctor = doctor
    doctor.add_appointment(self) unless doctor.appointments.include? (self)
  end

  def patient=(patient)
    @patient = patient
    patient.add_appointment(self) unless doctor.appointments.include? (self)
  end

end
