class Appointment
  attr_accessor :name, :doctor, :patient
  def initialize(name, doctor)
    @name = name
    @doctor = doctor
    @patient = patient
    doctor.add_appointment(self)
  end
end
