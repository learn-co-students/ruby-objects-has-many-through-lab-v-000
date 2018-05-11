class Appointment

  attr_accessor :patient, :doctor

  def initialize(patient, doctor)
    @patient = patient
    @doctor = doctor
    doctor.add_appointment(self)
  end

end
