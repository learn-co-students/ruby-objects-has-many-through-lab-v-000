class Appointment
  attr_accessor :doctor, :date, :patient
  def initialize(name, doctor)
    @name = name
    @doctor = doctor
    doctor.add_appointment(self)
  end

end