class Appointment
  attr_accessor :date, :patient, :doctor

  def initialize(date, doctor)
    @date = date
    doctor.add_appointment(self)
    @doctor = doctor
  end
end
